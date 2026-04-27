$htmlFile = "c:\Users\Roberto\Desktop\Kimba-Lodge\kimba_lodge_complete.html"

# Append body opening and header
@'
<body class="home-page">
  <a class="skip-link" href="#main-content">Skip to main content</a>

  <header class="site-header home-header">
    <div class="wrap">
      <a class="logo" href="#home"><img src="images/kimba-logo.jpg" alt="Kimba Lodge logo" class="site-logo"></a>
      <div class="social-links" aria-label="Social links">
        <a class="facebook" href="https://www.facebook.com/" target="_blank" rel="noopener" aria-label="Facebook">
          <svg class="icon" viewBox="0 0 24 24" width="22" height="22" aria-hidden="true">
            <circle cx="12" cy="12" r="11" fill="none" stroke="currentColor" stroke-width="2"></circle>
            <path d="M14 8h-2c-.6 0-1 .4-1 1v2h-1v2h1v5h2v-5h1.3l.7-2H14V9h1V8z" fill="currentColor"></path>
          </svg>
        </a>
        <a class="instagram" href="https://www.instagram.com/" target="_blank" rel="noopener" aria-label="Instagram">
          <svg class="icon" viewBox="0 0 24 24" width="22" height="22" aria-hidden="true">
            <rect x="4" y="4" width="16" height="16" rx="4" ry="4" fill="none" stroke="currentColor" stroke-width="2"></rect>
            <circle cx="12" cy="12" r="4" fill="none" stroke="currentColor" stroke-width="2"></circle>
            <circle cx="17" cy="7" r="1.5" fill="currentColor"></circle>
          </svg>
        </a>
      </div>
      <nav class="main-nav">
        <a href="#home" class="nav-link">Home</a>
        <a href="#rooms" class="nav-link">Rooms</a>
        <a href="#facilities" class="nav-link">Facilities</a>
        <a href="#activities" class="nav-link">Activities</a>
        <a href="#contact" class="nav-link">Contact</a>
        <a href="#faq" class="nav-link">FAQ</a>
      </nav>
    </div>
  </header>

  <main id="main-content">
'@ | Add-Content -Path $htmlFile -Encoding UTF8

Write-Host "Building single file website..."
