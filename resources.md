---
layout: page
title: Resources
permalink: /resources/
---
{% for material in site.resources %}
-	{{ material.name }}
{% endfor%}