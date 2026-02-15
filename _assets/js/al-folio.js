// Dark mode toggle
document.addEventListener('DOMContentLoaded', function() {
  const toggle = document.getElementById('darkModeToggle');
  const html = document.documentElement;
  
  // Check for saved preference or system preference
  const savedTheme = localStorage.getItem('theme');
  const systemPrefersDark = window.matchMedia('(prefers-color-scheme: dark)').matches;
  
  if (savedTheme) {
    html.setAttribute('data-theme', savedTheme);
    updateIcon(savedTheme);
  } else if (systemPrefersDark) {
    html.setAttribute('data-theme', 'dark');
    updateIcon('dark');
  }
  
  if (toggle) {
    toggle.addEventListener('click', function() {
      const currentTheme = html.getAttribute('data-theme');
      const newTheme = currentTheme === 'dark' ? 'light' : 'dark';
      
      html.setAttribute('data-theme', newTheme);
      localStorage.setItem('theme', newTheme);
      updateIcon(newTheme);
    });
  }
  
  function updateIcon(theme) {
    if (toggle) {
      const icon = toggle.querySelector('i');
      if (theme === 'dark') {
        icon.className = 'fa-regular fa-sun';
      } else {
        icon.className = 'fa-regular fa-moon';
      }
    }
  }
});

// Smooth scrolling for anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
  anchor.addEventListener('click', function(e) {
    e.preventDefault();
    const target = document.querySelector(this.getAttribute('href'));
    if (target) {
      target.scrollIntoView({
        behavior: 'smooth',
        block: 'start'
      });
    }
  });
});
