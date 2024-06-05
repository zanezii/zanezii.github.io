<h1 id="news"></h1>

<h2 style="margin: 60px 0px 10px;">News</h2>

<ul>
  {% assign max_visible = 3 %}<!--设置visible item number -->
  {% for link in site.data.news.main %}
  {% if forloop.index <= max_visible %}
  <li><strong>[{{ link.date }}]</strong> {{ link.msg }}</li>
  {% endif %}
  {% endfor %}
  <li><a href="javascript:toggle_vis('newsmore')">Show More</a></li>
</ul>

<div id="newsmore" style="display:none">
  <ul>
    {% for link in site.data.news.main %}
    {% if forloop.index0 >= max_visible %}
    <li><strong>[{{ link.date }}]</strong> {{ link.msg }}</li>
    {% endif %}
    {% endfor %}
    <li><a href="javascript:toggle_vis('newsmore')">Show Less</a></li>
  </ul>
</div>