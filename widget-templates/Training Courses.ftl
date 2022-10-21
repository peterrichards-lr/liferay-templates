<#if entries?has_content>
	<div class="display-card">
	<ul class="card-page">		
	<#list entries as entry>
		<li class="card-page-item card-page-item-asset">
			<div class="card card-type-asset file-card" id="training-course-${randomNamespace}">
				<div class="aspect-ratio card-item-first">
					<#if entry.isThumbnailVisible()>
						<img alt="${htmlUtil.escape(entry.getTitle())}" class="aspect-ratio-item-center-middle aspect-ratio-item-fluid" src="${entry.getThumbnailURLString()}" />
					<#elseif entry.isUserPortraitVisible() && stringUtil.equals(entry.getClassName(), userClassName)>
						<div class="user-card">
							<div class="aspect-ratio-item aspect-ratio-item-center-middle aspect-ratio-item-vertical-fluid card-type-asset-icon">
								<span class="sticker sticker-secondary sticker-user-icon">
									<span class="sticker-overlay">
										<img alt="${htmlUtil.escape(entry.getTitle())}" class="img-fluid" src="${entry.getUserPortraitURLString()}" />
									</span>
								</span>
							</div>
						</div>
					<#else>
						<div class="aspect-ratio-item aspect-ratio-item-center-middle aspect-ratio-item-vertical-fluid card-type-asset-icon">
							<@clay.icon symbol="${(entry.isIconVisible())?then(entry.getIconId(),'web-content')}" />
						</div>
					</#if>
				</div>
				${articleService.getContentByClassPK(entry.getClassPK()?number, "1454376")}
			</div>
		</li>
	</#list>
		</ul>	
	</div>
</#if>