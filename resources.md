---
layout: page
title: Resources
permalink: /resources/
---
{% for resource in site.resources %}
-	[{{ resource.name }}]({{ resource.url }})
{% endfor%}