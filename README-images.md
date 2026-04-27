# Images & Gallery — Kimba Lodge

This project includes placeholder images and a lightweight lightbox gallery.

How to replace placeholders with your real photos:

1. Add photos to `images/` with descriptive filenames (e.g. `elephant-room.jpg`, `lion-room.jpg`).
2. Replace the existing placeholder file (same name) or update the `src` in the HTML to point to your file.
3. For best performance, provide multiple sizes and WebP versions:

   - Use `cwebp` (Google) to make WebP on Windows (PowerShell):

     # single file
     cwebp -q 80 "elephant-room.jpg" -o "elephant-room.webp"

     # batch (PowerShell)
     Get-ChildItem -Filter *.jpg | ForEach-Object { & "C:\path\to\cwebp.exe" -q 80 $_.FullName -o ($_.DirectoryName + "\\" + $_.BaseName + ".webp") }

   - Or use ImageMagick (Windows) to convert and resize:

     magick convert "input.jpg" -resize 1200x "output-1200.jpg"

4. Use `<picture>` and `srcset` for downstream devices (see `rooms.html` example):

<picture>
  <source type="image/webp" srcset="images/elephant-room-400.webp 400w, images/elephant-room-800.webp 800w">
  <img src="images/elephant-room-800.jpg" alt="Elephant Room" class="responsive-img" loading="lazy">
</picture>

The lightbox:
- Click any image with a `data-gallery` attribute to open the full-size image. Use arrows or keyboard to navigate, Esc to close.

If you want, I can:
- Bulk-generate WebP/resized copies for the placeholder images (I can do this for local images if you upload them or provide them in the images folder), or
- Add sample `<picture>` markup for each image to accept both WebP and JPG automatically.

Tell me if you want me to convert the placeholder SVGs to raster WebP placeholders as well, or wait until you add real JPEG/PNG files.