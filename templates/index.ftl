<#include "header.ftl">
	
	<#include "menu.ftl">

	<div class="page-header">
		<h1>Blog</h1>
	</div>
	<#list posts as post>
  		<#if (post.status == "published")>
  			<a href="${post.uri}"><h1><#escape x as x?xml>${post.title}</#escape></h1></a>
  			<p>${post.date?string("dd MMMM yyyy")}</p>
  			<p>${post.body}</p>
  		</#if>
  	</#list>
	
	<hr />
	
	<p>Older posts are available in the <a href="${content.rootpath}${config.archive_file}">archive</a>.</p>

	<#list data.get('videos.yaml').data as videos>
        <a href="https://youtu.be/${videos.youtubeId}">${videos.title}</a>
	</#list>

<#include "footer.ftl">