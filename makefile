CHART_NAMESPACE		:= "media-center"
CHART_PROJECT		:= "media-center"

install-chart:
	helm upgrade \
		$(CHART_PROJECT) \
		./ \
		--namespace $(CHART_NAMESPACE) \
		--create-namespace \
		--install

dry-run:
	helm upgrade \
		$(CHART_PROJECT) \
		./ \
		--namespace $(CHART_NAMESPACE) \
		--create-namespace \
		--install \
		--dry-run

test:
	helm template ./ --namespace $(CHART_NAMESPACE)  | datree test -