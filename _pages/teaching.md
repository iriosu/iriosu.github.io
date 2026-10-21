---
layout: page
permalink: /teaching/
title: teaching
description: Courses I have taught at various institutions.
nav: true
nav_order: 6
---

{% for institution in site.data.teaching.courses %}

## {{ institution.institution }}

{% for course in institution.courses %}
**{{ course.title }}** ({{ course.level }}{% if course.role %}, {{ course.role }}{% endif %}){% if course.links %} · Interactive tools: {% for link in course.links %}[{{ link.title }}]({{ link.url | relative_url }}){% unless forloop.last %}, {% endunless %}{% endfor %}{% endif %}  
{% endfor %}

---

{% endfor %}
