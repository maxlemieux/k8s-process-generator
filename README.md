# k8s-process-generator
An application whose entrypoint generates random processes for testing

Building:

```
cd src
docker build -t random-process-generator:latest .
docker tag random-process-generator:latest <your-registry>/random-process-generator:latest
docker push <your-registry>/random-process-generator:latest
```
