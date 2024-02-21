## Demo api with helm

### Build image
    eval $(minikube docker-env)
    docker build -t demoapi ./api/.

### Deploy helm
    cd ./k8s/demo
    ./deploy.sh

### Expose port
    kubectl -n demoapi port-forward svc/demoapi-svc 8080:5000

### Open url
    http://localhost:8080/swagger

### Undeploy helm
    ./undeploy.sh