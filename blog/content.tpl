<div class="content_container"> 
{% if contents ~= nil then %}
  {% for _, content in ipairs(contents) do %}
  <div class="post"> 

   {% if content.archives ~= nil then %}
   <div class="post-archive">
    {% for _, archive in ipairs(content.archives) do %}
      <h2>{{ archive.year }}</h2>
        <ul class="listing">
        {% for _, item in ipairs(archive.items) do %}
         <li><span class="date">{{ item.date }}</span><a href="{{item.link}}" title="{{ item.title }}">{{ item.text }}</a></li>
        {% end %} 
        </ul>
     {% end %}
   </div>
   {% end %}

   {% if content.title ~= nil then %}
   <h1 class="post-title">{* content.title *}</h1> 
   {% end %}

   <div {% if content.create_date ~= nil then %} class="post-meta" {% end %} >
   {% if content.create_date ~= nil then %}
    {{ content.create_date }}
    <span> | </span> 
   {% end %}

   {% if content.category ~= nil then %}
    <span class="category"><a href="javascript:void(0);">{{content.category}}</a></span> 
   {% end %}

   </div> 

   {% if content.comment_count ~= nil then %}
   <a class="disqus-comment-count" href="javascript:void(0);">{{content.comment_count}}</a> 
   {% end %}

   <div class="post-content"> 
     {* content.html *}
   </div> 

   {% if content.readmore ~=nil then %}
   <p class="readmore" ><a href="{{ content.readmore }}" >阅读全文 </a></p>
   {% end %}

   {% if share_url ~=nil then %}
    <a class="article-share-link" title="{{ share_url }}">分享</a> 
   {% end %}

   <div class="tags"> 
   {% if content.tags ~=nil then %}
    {% for _, tag in ipairs(content.tags) do %}
    <a href="{{tag.link}}" >{{tag.text}}</a> 
    {% end %}
    {% end %}
   </div> 
    
   <div class="post-nav"> 
    {% if content.pre_article ~= nil then %}
    <a class="pre" href="{{content.next_article.link}}" title="{{content.pre_article.title}}">上一篇</a> 
    {% end %}
    {% if content.next_article ~= nil then %}
    <a class="next" href="{{content.next_article.link}}" title="{{content.next_article.title}}">下一篇</a> 
    {% end %}
   </div> 
   {% if content.can_comment then %}
   <div style="padding: 10px 20px; position: relative; overflow: hidden;">
      <div style="height: 110px; transition: all 0.5s ease 0s; overflow: hidden; position: relative;">
        <div style="position: absolute; padding-top: 6px;">
          <img src="/favicon.ico"  style="width: 50px; height: 50px; border-radius: 50%; box-shadow: rgb(204, 204, 204) 1px 1px 3px 0.5px;"></div>
          <textarea style="position: absolute; top: 0px; left: 70px; width: calc(100% - 70px); height: 100px; box-sizing: border-box; font-size: 16px; letter-spacing: 0.7px; padding: 12px; color: rgb(85, 85, 85); background-color: rgb(248, 248, 248); outline: none; border: none; resize: none; border-radius: 8px; overflow: auto; box-shadow: rgb(170, 170, 170) 1px 1px 2px -1px;"></textarea>
      </div>
      <button style="transition: all 0.4s ease 0s; outline: none; border: none; color: white; background-color: rgb(66, 185, 131); cursor: pointer; font-size: 14px; margin-left: calc(100% - 46px); padding: 2px 16px; border-radius: 4px;">
        <i class="fa fa-comment-o" aria-hidden="true"></i>
      </button>
      <div style="font-size: 15px; margin-left: 70px; color: rgb(136, 136, 136);">共 {{ content.comment_count }} 条评论</div>
      <!-- 评论 -->
      <ul>
        <li style="list-style:none;">
          <div style="padding: 0px 10px;">
          <div style="display: inline-block;">
            <img src="/favicon.ico" style="width: 40px; height: 40px; border-radius: 50%; box-shadow: rgb(204, 204, 204) 1px 1px 3px 0.5px;"></div>
            <div style="margin: -60px 0px 0px 60px;">
              <p class="comment-header">
                <span style="display: inline-block; margin-right: 10px; color: rgb(136, 136, 136); font-size: 14px;">张三</span>
                <span style="display: inline-block; margin-right: 10px; color: rgb(187, 187, 187); font-size: 12px; font-family: calligraffittiregular, sans-serif;">2019-01-06 19:35:49</span></p>
              <p class="comment-body" style="font-size: 14px; color: rgb(52, 73, 94); margin-bottom: 0px;">
              <p>Nice</p>
            </p>
            <div style="font-size: 12px;">
              <i class="fa fa-thumbs-up" style="display: inline-block; color: rgb(66, 185, 131); margin-right: 10px;"></i>1
              <i class="fa fa-thumbs-down" style="margin-left: 10px; color: rgb(255, 151, 77); display: inline-block; margin-right: 10px;"></i>0
              <p style="display: inline-block;">
              <a style="color: rgb(66, 185, 131); text-decoration: none; cursor: pointer; margin-left: 10px;">回复</a></p>
            </div>
            </div>
          </div>
        </li>
      </ul>
    <!-- 评论 End -->
    </div>
    {% end %}
  </div> 
  {% end %}
{% end %}

 </div> 
