podman machine stop; podman machine rm podman-machine-default -f
podman machine init --cpus 4 --memory=6144
podman machine start
KIND_EXPERIMENTAL_PROVIDER=podman kind create cluster --config .kind/cluster.yaml
helm upgrade --install --create-namespace --namespace strimzi strimzi oci://quay.io/strimzi-helm/strimzi-kafka-operator -f .kind/strimzi-operator-values.yaml --version ${V_STRIMZI_OPERATOR:-0.37.0} --wait
