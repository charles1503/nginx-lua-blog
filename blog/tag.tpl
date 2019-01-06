<div class="widget"> 
 <div class="widget-title"> 
  <i class="fa fa-star-o"> 标签</i> 
 </div>  
 <!-- Tags --> 
 <div class="tagcloud"> 
  {% for _, tag in ipairs(tags) do %}
  <a href="{{tag.link}}" style="font-size: 15px;">{{tag.text}}</a> 
  {% end %}
  </div>
 <!-- Tags End -->
</div> 