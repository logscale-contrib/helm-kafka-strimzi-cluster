helm upgrade --install --create-namespace --namespace strimzi strimzi oci://quay.io/strimzi-helm/strimzi-kafka-operator -f .kind/strimzi-operator-values.yaml --version ${V_STRIMZI_OPERATOR:-0.37.0}
