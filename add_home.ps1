$htmlFile = "c:\Users\Roberto\Desktop\Kimba-Lodge\kimba_lodge_complete.html"

# HOME PAGE SECTION
@'
    <!-- HOME PAGE -->
    <section id="home" class="page-content active">
      <section class="hero">
        <div class="wrap hero-inner">
          <figure class="hero-figure">
            <a href="images/pool at night.jpg" target="_blank" rel="noopener" title="View larger photo of the swimming pool at night">
              <img src="images/pool at night.jpg" alt="The swimming pool at Kimba Lodge illuminated at night" class="responsive-img" width="1200" height="800" loading="lazy" data-gallery="hero">
            </a>
          </figure>
          <h1>Welcome to Kimba Lodge</h1>
          <p class="lead">Welcome to Kimba Lodge, where adventure meets peaceful serenity. Step into a world where the heartbeat of Africa surrounds you. Here every morning greets you with golden sunlight spilling over bushveld savannah and every evening paints the sky in a tapestry of oranges, pinks and purples. At Kimba Lodge we invite you to feel the thrill of adventure and the comfort of home all at once. Enjoy a stroll through our natural garden, watch the kois do tricks for a treat, pass an evening in our open air boma, breathe in the scent of wildflowers, and let the gentle rhythm of nature guide your day.</p>
          <p><a class="btn" href="#rooms">View Rooms & Amenities</a> <a class="btn alt" href="#contact">Book a Stay</a></p>
        </div>
      </section>

      <section class="intro wrap">
        <h2>Experience the wilderness</h2>
        <p>Listen to the calls of wildlife, or relax on the veranda with a cup of coffee as the savannah stretches endlessly before you. Every corner of our tastefully decorated and comfortable property tells a unique story, of African culture, of history and of the untamed beauty that Africa holds. Whether you seek heart-pounding excursions, or just simple quiet moments of reflection, Kimba Lodge is your gateway to experiences that stir the soul. Let curiosity lead you, let comfort embrace you, and let your journey begin here. Welcome to an adventure that feels like home.</p>
      </section>

      <section class="features wrap">
        <article class="card">
          <h3>Comfortable Rooms</h3>
          <p>From private suites to cottages, each room has its own unique character that will surprise you.</p>
        </article>
        <article class="card">
          <h3>Safaries and Game viewing</h3>
          <p>Choose from private game drives, walking safaris, birding and photographic safaris led by expert guides, or visit the Kruger Park we are just 1km from the Phalaborwa gate.</p>
        </article>
        <article class="card">
          <h3>Nearby Activities</h3>
          <p>Golfing at the world renowed Hans Marensky Golf course, cultural visits and full-day trips to Kruger Park are available.</p>
        </article>
      </section>
    </section>
'@ | Add-Content -Path $htmlFile -Encoding UTF8

Write-Host "Added HOME section"
