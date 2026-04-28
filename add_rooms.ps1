$htmlFile = "c:\Users\Roberto\Desktop\Kimba-Lodge\kimba_lodge_complete.html"

# ROOMS PAGE SECTION
@"
    <!-- ROOMS PAGE -->
    <section id="rooms" class="page-content">
      <section class="rooms wrap">
        <div class="features">
          <article class="card">
            <a href="#elephant-room">
              <figure>
                <picture>
                  <source type="image/webp" srcset="images/elephant-room-400.webp 400w, images/elephant-room-800.webp 800w, images/elephant-room-1200.webp 1200w" sizes="(max-width:700px) 100vw, 33vw">
                  <img src="images/elephant-room.svg" alt="Elephant Room, modern decor" class="responsive-img" width="400" height="300" loading="lazy" data-gallery="rooms">
                </picture>
              </figure>
              <h3>Elephant Room</h3>
              <p>Grounded, wise, and deeply calming, the Elephant Room evokes strength and serenity. Gentle earth tones and elegant motifs invite reflection, rest, and a timeless sense of connection.</p>
            </a>
          </article>

          <article class="card">
            <a href="#lion-room">
              <figure>
                <picture>
                  <source type="image/webp" srcset="images/lion-room-400.webp 400w, images/lion-room-800.webp 800w, images/lion-room-1200.webp 1200w" sizes="(max-width:700px) 100vw, 33vw">
                  <img src="images/lion-room.svg" alt="Lion Room, suite with cubs room" class="responsive-img" width="400" height="300" loading="lazy" data-gallery="rooms">
                </picture>
              </figure>
              <h3>Lion & Cubs Suite</h3>
              <p>Begin in the playful Cubs' Room, then step through a hidden wardrobe to the regal Lion Room. A secret, magical passage links innocence with strength, creating a suite full of adventure, imagination, and quiet power.</p>
            </a>
          </article>

          <article class="card">
            <a href="#zebra-room">
              <figure>
                <picture>
                  <source type="image/webp" srcset="images/zebra-room-400.webp 400w, images/zebra-room-800.webp 800w, images/zebra-room-1200.webp 1200w" sizes="(max-width:700px) 100vw, 33vw">
                  <img src="images/zebra-room.svg" alt="Zebra Room, bold and modern" class="responsive-img" width="400" height="300" loading="lazy" data-gallery="rooms">
                </picture>
              </figure>
              <h3>Zebra Room</h3>
              <p>Bold, striking, and full of energy, the Zebra Room balances contrasts with playful elegance. Crisp patterns and dynamic details create a space that sparks imagination, clarity, and a sense of adventure.</p>
            </a>
          </article>

          <article class="card">
            <a href="#baobab-cottage">
              <figure>
                <picture>
                  <source type="image/webp" srcset="images/baobab-cottage-400.webp 400w, images/baobab-cottage-800.webp 800w, images/baobab-cottage-1200.webp 1200w" sizes="(max-width:700px) 100vw, 33vw">
                  <img src="images/baobab-cottage.svg" alt="Baobab Cottage, forest-inspired" class="responsive-img" width="400" height="300" loading="lazy" data-gallery="rooms">
                </picture>
              </figure>
              <h3>Baobab Cottage</h3>
              <p>Sleep among the treetops in beds shaped like living trees. This whimsical, forest-inspired cottage surrounds you with natural warmth and gentle magic, perfect for dreaming, exploring, and family adventures.</p>
            </a>
          </article>

          <article class="card">
            <a href="#victorian-cottage">
              <figure>
                <picture>
                  <source type="image/webp" srcset="images/victorian-cottage-400.webp 400w, images/victorian-cottage-800.webp 800w, images/victorian-cottage-1200.webp 1200w" sizes="(max-width:700px) 100vw, 33vw">
                  <img src="images/victorian-cottage.svg" alt="Victorian Cottage, romantic retreat" class="responsive-img" width="400" height="300" loading="lazy" data-gallery="rooms">
                </picture>
              </figure>
              <h3>Victorian Cottage</h3>
              <p>Step into timeless elegance and intimate charm. With antique details and a private garden filled with roses, this romantic retreat offers quiet beauty, graceful comfort, and moments that linger long after nightfall.</p>
            </a>
          </article>
        </div>
      </section>
      <button class="btn book-btn" id="bookNowBtn" aria-label="Open booking form" tabindex="0">Book Now</button>
    </section>
"@ | Add-Content -Path $htmlFile -Encoding UTF8

Write-Host "Added ROOMS section"
