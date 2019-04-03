{% extends '_layout.swig' %}
{% import '_macro/post-collapse.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

{% block title %}{{ __('title.links') }}: {{ page.links }} | {{ title }}{% endblock %}

{% block content %}

  {######################}
  {### CATEGORY BLOCK ###}
  {######################}
  <div class="post-block category">

    <div id="posts" >
        <ul style="width:40%;float:left;">
      {% for v, i in site.data.links %}
        <li >
            <a href="{{ i.link }}" title="{{ v }}" target="_blank">
                <span class="md-links-title">{{  i.title }}</span><br />
            </a>
        </li>
        {% if loop.index%5==0 %}
            </ul>
            <ul style="width:40%;float:left;">
        {% endif %}

       {% endfor %}
       </ul>
    </div>

  </div>
  {##########################}
  {### END CATEGORY BLOCK ###}
  {##########################}

  {% include '_partials/pagination.swig' %}

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
