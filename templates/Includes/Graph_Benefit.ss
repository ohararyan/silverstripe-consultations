<h3>Who would benefit most?</h3>

<div class="chart">
	<canvas id="benefit" class="graphit" width="210" height="210" data-data='[<% loop WhoWillBenefitData %>{"value": $Value,"color": "#{$DarkColor}", "label": "$Title"}<% if not Last %>,<% end_if %><% end_loop %>
			]'>
	</canvas>

	<div class="tooltip_center">
		<% loop WhoWillBenefitData.Sort(Value, DESC) %>
			<div class="tooltip_center__label <% if First %>tooltip_center__show<% end_if %>" data-graph-count="$Value"><% if Percentage %><strong>$Percentage<sup>%</sup></strong> $Title<% end_if %></div>
		<% end_loop %>
	</div>
</div>

<ul class="key">
	<% loop SiteConfig.BenefitsKey %>
		<li><span class="icon icon-color" style="background-color: #{$DarkColor}"></span> $Title</li>
	<% end_loop %>
</ul>