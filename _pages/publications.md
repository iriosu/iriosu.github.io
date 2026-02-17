---
layout: page
permalink: /research/
title: research
description: Research papers and working papers.
nav: true
nav_order: 2
---

<!-- _pages/publications.md -->

<div class="publications">

<!-- Filter buttons -->
<div class="text-center mb-4">
  <button class="btn btn-sm btn-secondary filter-btn active" data-filter="all">All</button>
  <button class="btn btn-sm btn-outline-secondary filter-btn" data-filter="published">Published</button>
  <button class="btn btn-sm btn-outline-secondary filter-btn" data-filter="under-review">Under Review</button>
  <button class="btn btn-sm btn-outline-secondary filter-btn" data-filter="working-paper">Working Paper</button>
  <button class="btn btn-sm btn-outline-secondary filter-btn" data-filter="work-in-progress">Work in Progress</button>
</div>

<div id="bibliography-list">
{% bibliography %}
</div>

</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
  const filterButtons = document.querySelectorAll('.filter-btn');
  const publications = document.querySelectorAll('.bibliography > li');

  filterButtons.forEach(button => {
    button.addEventListener('click', function() {
      const filter = this.getAttribute('data-filter');
      
      // Update active button
      filterButtons.forEach(btn => {
        btn.classList.remove('active');
        btn.classList.add('btn-outline-secondary');
        btn.classList.remove('btn-secondary');
      });
      this.classList.add('active');
      this.classList.remove('btn-outline-secondary');
      this.classList.add('btn-secondary');
      
      // Filter publications
      publications.forEach(pub => {
        if (filter === 'all') {
          pub.style.display = '';
        } else {
          const categoryBadge = pub.querySelector('.publication-category[data-category="' + filter + '"]');
          if (categoryBadge) {
            pub.style.display = '';
          } else {
            pub.style.display = 'none';
          }
        }
      });
    });
  });
});
</script>
