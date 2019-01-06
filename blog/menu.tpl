<!-- Menu -->
<div id="nav-menu"> 
  {% for _, menu in ipairs(menus) do %}
  <a  {% if menu.active then %} class="current"{% end %} href="{{menu.link}}"><i class="{{menu.icon_style}}"> {{menu.text}}</i></a> 
  {% end %} 
</div> 
<!-- Menu End -->