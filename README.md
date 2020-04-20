# Rasp MLFlow

Docker image for MLFlow, running on Raspberry Pi.

## Getting started

To start mlflow server, run:
```
docker run -it -p 5000:5000 -v <YOUR_PERSISTENT_DIR>:/app/mlflow --name mlflow-server noes/rasp-mlflow mlflow server --backend-store-uri /app/mlflow/mlflow-data --host 0.0.0.0
```

### Artifact store

I personnally use `sftp` to connect to my artifact store.
Hence, I needed to manually add the required `ssh` host keys to my container. To do that, I mounted a `.ssh` directory with the required host keys (in `.ssh/known_hosts`) into my container's `root/.ssh` directory by running:
```
docker run -it -p 5000:5000 -v <YOUR_PERSISTENT_DIR>:/app/mlflow -v $HOME/.ssh:/root/.shh --name mlflow-server noes/rasp-mlflow mlflow server --backend-store-uri /app/mlflow/mlflow-data --host 0.0.0.0
```

