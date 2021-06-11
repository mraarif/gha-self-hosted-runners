kubectl create secret generic controller-manager \
    -n actions-runner-system \
    --from-literal=github_token=${GITHUB_TOKEN}
