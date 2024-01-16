# k8s-process-generator
An application whose entrypoint generates random processes for testing

Build:

```
cd src
docker build -t random-process-generator:latest .
docker tag random-process-generator:latest <your-registry>/random-process-generator:latest
docker push <your-registry>/random-process-generator:latest
```

Install:

```
cd /path/to/k8s-process-generator
cp random-process-generator.yaml.example random-process-generator.yaml

# Update the registry in the manifest, then apply it:
kubectl apply -f random-process-generator.yaml -n namespace
```
