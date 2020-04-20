# Rasp MLFlow

Docker image for MLFlow, running on Raspberry Pi.

## Getting started

To start mlflow server, run:
```
docker run -it -p 5000:5000 -v path/to/persistent/dir:/app/mlflow \
    --name mlflow-server noes/rasp-mlflow \
    mlflow server --backend-store-uri /app/mlflow/mlflow-data --host 0.0.0.0
```

To stop mlflow server, run:
```
docker stop mlflow-server
```

To restart mlflow server, run:
```
docker start mlflow-server
```

### Artifact store

I personnally use `sftp` to connect to my artifact store.

Hence, I needed to manually add the required `ssh` host keys to my container. To do that, I mounted a `.ssh` directory with the required host keys (`.ssh/known_hosts` file) into my container's `root/.ssh` directory by running:
```
docker run -it -p 5000:5000 -v path/to/persistent/dir:/app/mlflow \
    -v path/to/.ssh:/root/.shh --name mlflow-server noes/rasp-mlflow \
    mlflow server --backend-store-uri /app/mlflow/mlflow-data --host 0.0.0.0
```

