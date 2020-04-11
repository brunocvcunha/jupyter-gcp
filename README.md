# jupyter-gcp

[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/brunocvcunha/jupyter-gcp/blob/master/LICENSE)

Jupyter/SciPy Docker Image with GCP dependencies

# Usage

Requires Docker daemon running.

## Image Includes

- gsutil / gcloud CLI
- numpy / pandas
- gcsfs / fastparquet / pyarrow / dask

## Build
```
docker build -t jupyter-bruno .
```


## Start
```
docker run --name jupyter -v ~/jupyter-data:/data -it -e NB_USER=bruno -e GRANT_SUDO=yes --user root -p 8888:8888 jupyter-bruno
```

## Open

Copy the URL (http://127.0.0.1:8888/?token={TOKEN}) from the console and open in any browser.
