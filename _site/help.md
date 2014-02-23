  {% for post in site.posts %}
    	<h4>{{i}}</h4>
      	<span>{{ post.date | date_to_string }}</span>
      	<a href="{{ post.url }}">{{ post.title }}</a>
      	<div>
      		{{ post.content}}
      	</div>
    {% endfor %}