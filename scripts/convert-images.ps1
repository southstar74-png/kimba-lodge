<#
PowerShell script to bulk-generate resized JPG and WebP images using ImageMagick (magick) and cwebp (optional).
Place your source images in the 'images' folder. The script will generate resized JPGs and matching WebP files.
#>

param(
  [string]$srcDir = "images",
  [int[]]$sizes = @(400,800,1200),
  [int]$quality = 80
)

function Check-Tool($name){
  $cmd = Get-Command $name -ErrorAction SilentlyContinue
  if(-not $cmd){ Write-Host "Warning: $name not found in PATH. Please install ImageMagick or cwebp." -ForegroundColor Yellow }
}

Check-Tool -name magick
Check-Tool -name cwebp

$images = Get-ChildItem -Path $srcDir -Include *.jpg,*.jpeg,*.png,*.svg -File -Recurse
if(-not $images){ Write-Host "No images found in $srcDir"; exit }

foreach($img in $images){
  $base = $img.BaseName
  $ext = $img.Extension.ToLower()
  foreach($w in $sizes){
    $outJpg = Join-Path $img.DirectoryName ("$base-$w.jpg")
    # Resize using ImageMagick (magick)
    if(Get-Command magick -ErrorAction SilentlyContinue){
      & magick "${img.FullName}" -resize ${w}x "${outJpg}"
      Write-Host "Created $outJpg"
      # Create webp using cwebp if available
      $outWebp = Join-Path $img.DirectoryName ("$base-$w.webp")
      if(Get-Command cwebp -ErrorAction SilentlyContinue){
        & cwebp -q $quality "${outJpg}" -o "${outWebp}"
        Write-Host "Created $outWebp"
      } else {
        # fallback: use magick to write webp
        if(Get-Command magick -ErrorAction SilentlyContinue){
          & magick "${outJpg}" -quality $quality "${outWebp}"
          Write-Host "Created $outWebp (via magick)"
        }
      }
    }
    else { Write-Host "ImageMagick (magick) not found. Install it to enable resizing." -ForegroundColor Yellow }
  }
}

Write-Host "Done. Place the generated webp/jpg files in the images directory; HTML already uses <picture> with expected filenames." -ForegroundColor Green
