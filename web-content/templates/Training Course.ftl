<div class="card-body">
		<div class="card-row">
			<div class="autofit-col autofit-col-expand">
				<section class="autofit-selection">
				  <h2 class="card-title">
					<#if (overview.courseTitle.getData())??>
					  <a href="${friendlyURL}">${overview.courseTitle.getData()}</a>
					</#if>
					</h2>
					<p class="card-subtitle">
					Online
					</p>
					<#if (duration.getData())??>
					<p class="card-subtitle">
						${duration.getData()}
					</p>
					</#if>
					<p class="card-description">
						<#assign summary=overview.description.getData()!""?replace('<[^>]+>','','r') />
						<#if (summary?length < 90) >
						 ${summary}
						 <#else>
						 ${summary?substring(0,89)} ...
						</#if>
					</p>
				</selection>
			</div>
		</div>
	</div>