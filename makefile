create-cluster:
	@./create-cluster.sh

delete-cluster:
	@kind delete cluster -n jaeger-test

deploy-cert-manager:
	@helm install \
		cert-manager jetstack/cert-manager \
		--namespace cert-manager \
		--create-namespace \
		-f cert-manager.yaml

deploy-jaeger-operator:
	@helm install \
		jaeger-operator jaegertracing/jaeger-operator \
		-f jaeger-operator.yaml