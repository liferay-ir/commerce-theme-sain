<footer class="commerce-footer" id="footer" role="contentinfo">
	<div class="container-fluid container-fluid-max-xl">
		<div class="row">
			<div class="autofit-float autofit-padded autofit-row footer-main-section">

<div class="autofit-col col-xl-3 footer-section-column">
				<@site_navigation_menu_0 default_preferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
			</div>

<div class="autofit-col col-xl-3 footer-section-column">
				<@site_navigation_menu_1 default_preferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
			</div>

<div class="autofit-col col-xl-3 footer-section-column">
				<@site_navigation_menu_2 default_preferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
			</div>
		</div>

			<div class="autofit-float autofit-row autofit-row-center footer-secondary-section">
			<#if copyright?has_content>
<div class="autofit-col autofit-col-expand footer-section-column">
					<div>${copyright}</div>
				</div>
			</#if>

			<@site_navigation_menu_3 default_preferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
		</div>
        </div>
	</div>
</footer>