---
layout: page
permalink: /press/
title: press
description: Media coverage and press appearances
nav: true
nav_order: 6
---

<div class="publications">
  <h2 class="bibliography">Press Coverage</h2>
  {% assign articles_by_year = site.data.press.articles | group_by: "year" | sort: "name" | reverse %}
  {% for year_data in articles_by_year %}
    {% assign year = year_data.name %}
    {% assign articles = year_data.items %}
    
    {% for article in articles %}
    <div class="row">
      <div class="col-sm-2 abbr">
        <abbr class="badge info-color-dark">{{ year }}</abbr>
      </div>
      <div class="col-sm-10">
        <div class="title"><a href="{{ article.url }}" target="_blank">{{ article.title }}</a></div>
        <div class="periodical">
          <em>{{ article.outlet }}</em>
        </div>
      </div>
    </div>
    {% endfor %}
  {% endfor %}

  {% if site.data.press.podcasts %}
  <h2 class="bibliography">Podcasts</h2>
  {% assign podcasts_by_year = site.data.press.podcasts | group_by: "year" | sort: "name" | reverse %}
  {% for year_data in podcasts_by_year %}
    {% assign year = year_data.name %}
    {% assign podcasts = year_data.items %}
    
    {% for podcast in podcasts %}
    <div class="row">
      <div class="col-sm-2 abbr">
        <abbr class="badge info-color-dark">{{ year }}</abbr>
      </div>
      <div class="col-sm-10">
        <div class="title"><a href="{{ podcast.url }}" target="_blank">{{ podcast.title }}</a></div>
        <div class="periodical">
          <em>{{ podcast.outlet }}</em>
        </div>
        {% if podcast.description %}
        <div class="note">{{ podcast.description }}</div>
        {% endif %}
      </div>
    </div>
    {% endfor %}
  {% endfor %}
  {% endif %}
</div>
