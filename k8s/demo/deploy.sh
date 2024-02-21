helm upgrade --install --wait --debug --namespace demoapi --create-namespace demoapi . && helm -n demoapi test demoapi
