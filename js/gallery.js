// Lightweight gallery/lightbox for images with data-gallery attribute
(function(){
  const state = { currentIndex: 0, items: [] };

  function buildLightbox(){
    const lb = document.createElement('div');
    lb.className = 'lightbox';
    lb.setAttribute('role','dialog');
    lb.setAttribute('aria-hidden','true');
    lb.innerHTML = `
      <button class="lb-close" aria-label="Close">✕</button>
      <button class="lb-prev" aria-label="Previous">‹</button>
      <img class="lb-img" src="" alt="" />
      <div class="lb-caption" aria-live="polite"></div>
      <button class="lb-next" aria-label="Next">›</button>
    `;
    document.body.appendChild(lb);
    return lb;
  }

  function openLightbox(items, index){
    state.items = items; state.currentIndex = index;
    const lb = document.querySelector('.lightbox') || buildLightbox();
    const img = lb.querySelector('.lb-img');
    const caption = lb.querySelector('.lb-caption');
    const current = items[index];
    img.src = current.src;
    img.alt = current.alt || '';
    caption.textContent = current.caption || '';
    lb.classList.add('open');
    lb.setAttribute('aria-hidden','false');
    setTimeout(()=> img.focus && img.focus(),150);
  }

  function closeLightbox(){
    const lb = document.querySelector('.lightbox');
    if(!lb) return;
    lb.classList.remove('open');
    lb.setAttribute('aria-hidden','true');
  }

  function showNext(n){
    let idx = state.currentIndex + n;
    if(idx < 0) idx = state.items.length - 1;
    if(idx >= state.items.length) idx = 0;
    openLightbox(state.items, idx);
  }

  function init(){
    // collect images with data-gallery
    const imgs = Array.from(document.querySelectorAll('img[data-gallery]'));
    const groups = {};
    imgs.forEach((img,i)=>{
      const group = img.dataset.gallery || 'default';
      groups[group] = groups[group] || [];
      groups[group].push({src: img.src, alt: img.alt, caption: img.getAttribute('title') || img.alt});
      // click handler
      img.style.cursor = 'pointer';
      img.addEventListener('click', (e)=>{
        const idx = groups[group].findIndex(item=>item.src===img.src);
        openLightbox(groups[group], idx);
      });
    });

    // build lightbox and events
    const lb = buildLightbox();
    lb.addEventListener('click', (e)=>{
      if(e.target.classList.contains('lb-close') || e.target === lb) closeLightbox();
      if(e.target.classList.contains('lb-prev')) showNext(-1);
      if(e.target.classList.contains('lb-next')) showNext(1);
    });
    document.addEventListener('keydown',(e)=>{
      const lbOpen = document.querySelector('.lightbox.open');
      if(!lbOpen) return;
      if(e.key === 'Escape') closeLightbox();
      if(e.key === 'ArrowLeft') showNext(-1);
      if(e.key === 'ArrowRight') showNext(1);
    });
  }

  if(document.readyState === 'loading') document.addEventListener('DOMContentLoaded', init);
  else init();
})();