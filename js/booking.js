// Booking Modal and WhatsApp Integration Logic
(function(){
  const modal = document.getElementById('bookingModal');
  const openBtn = document.getElementById('bookNowBtn');
  const closeBtn = document.getElementById('closeModalBtn');
  const firstInput = document.getElementById('roomSelect');
  const bookingForm = document.getElementById('bookingForm');

  // Open modal
  function openModal() {
    if (!modal) return;
    modal.classList.add('active');
    modal.setAttribute('aria-hidden','false');
    // distinct styling handled by CSS class .active
    setTimeout(() => { firstInput && firstInput.focus(); }, 100);
  }

  // Close modal
  function closeModal() {
    if (!modal) return;
    modal.classList.remove('active');
    modal.setAttribute('aria-hidden','true');
    openBtn && openBtn.focus();
  }

  if (openBtn) openBtn.addEventListener('click', openModal);
  if (closeBtn) closeBtn.addEventListener('click', closeModal);

  // Close on outside click
  if (modal) {
    modal.addEventListener('click', function(e){ 
        if(e.target === modal) closeModal(); 
    });
  }

  // Keyboard accessibility
  document.addEventListener('keydown', function(e){
    if (!modal || !modal.classList.contains('active')) return;
    
    if(e.key === 'Escape' || e.key === 'Esc') closeModal();
    
    // Trap focus inside modal
    if(e.key === 'Tab') {
      const focusable = Array.from(modal.querySelectorAll('button, [href], input, select, textarea, [tabindex]:not([tabindex="-1"])'));
      if (focusable.length === 0) return;
      
      const first = focusable[0];
      const last = focusable[focusable.length-1];
      
      if(e.shiftKey) { 
        if(document.activeElement === first) { e.preventDefault(); last.focus(); } 
      } else { 
        if(document.activeElement === last) { e.preventDefault(); first.focus(); } 
      }
    }
  });

  // WhatsApp booking logic
  if (bookingForm) {
      bookingForm.onsubmit = function(e) {
        e.preventDefault();
        const roomSelect = document.getElementById('roomSelect');
        const checkinInput = document.getElementById('checkin');
        const checkoutInput = document.getElementById('checkout');

        if (!roomSelect || !checkinInput || !checkoutInput) return;

        const selectedRooms = Array.from(roomSelect.selectedOptions).map(opt => opt.value).join(', ');
        const checkin = checkinInput.value;
        const checkout = checkoutInput.value;

        if (!selectedRooms || !checkin || !checkout) {
          alert('Please select room(s) and dates.');
          return;
        }

        const msg = encodeURIComponent(`Booking request for Kimba Lodge:%0ARoom(s): ${selectedRooms}%0ACheck-in: ${checkin}%0ACheck-out: ${checkout}`);
        const waUrl = `https://wa.me/27849091777?text=${msg}`;
        window.open(waUrl, '_blank');
        closeModal();
      };
  }
})();
