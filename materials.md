---
layout: page
title: Materials
permalink: /material/
---
The products we buy are all made up of different materials that have different costs and environmental impacts.
{% for material in site.data.materials %}
-	[{{ material[1].name }}]({{ material[0] }})
{% endfor%}