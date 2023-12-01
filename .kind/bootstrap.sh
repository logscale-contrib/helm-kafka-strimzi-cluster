podman machine stop; podman machine rm podman-machine-default -f
podman machine init --cpus 4 --memory=6144
podman machine start
KIND_EXPERIMENTAL_PROVIDER=podman kind create cluster --config .kind/cluster.yaml
.kind/ci.sh
