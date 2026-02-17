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
**{{ course.title }}** ({{ course.level }}{% if course.role %}, {{ course.role }}{% endif %})  
{% endfor %}

---
{% endfor %}
