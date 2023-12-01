# helm upgrade --install --create-namespace --namespace strimzi strimzi oci://quay.io/strimzi-helm/strimzi-kafka-operator -f .kind/strimzi-operator-values.yaml --version ${V_STRIMZI_OPERATOR:-0.37.0} --wait
helm repo add strimzi https://strimzi.io/charts/
helm repo add cert-manager https://charts.jetstack.io
helm upgrade --install --create-namespace --namespace strimzi \
    strimzi strimzi/strimzi-kafka-operator --version ${V_STRIMZI_OPERATOR:-0.37.0} \
    -f .kind/strimzi-operator-values.yaml --wait
helm upgrade --install --create-namespace --namespace cert-manager \
    cert-manager cert-manager/cert-manager --version ${V_CERT_MANAGER:-1.13.1} \
    -f .kind/cert-manager-values.yaml --wait
