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
```

Apply the manifest:
```
kubectl apply -f random-process-generator.yaml -n namespace
```
