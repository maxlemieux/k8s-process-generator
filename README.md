# k8s-process-generator
An application whose entrypoint generates random processes for testing

Build:

```
cd src
docker build -t random-process-generator:latest .
docker tag random-process-generator:latest <your-registry>/random-process-generator:latest
docker push <your-registry>/random-process-generator:latest
```

Update configuration for your registry:

```
cd /path/to/k8s-process-generator
cp random-process-pod.yaml.example random-process-pod.yaml
# edit the file and update the registry to your container registry
```

Apply the manifest:
```
kubectl create namespace process-test
kubectl apply -f random-process-generator.yaml -n process-test
```

Result should be a job that runs a subprocess from the entrypoint process.

Quick way to run it and generate some test data:
```
for i in {1..100}; do k create -f random-process-pod.yaml -n process-test && sleep 30 && k delete pod -n process-test random-process-generator; done
```
