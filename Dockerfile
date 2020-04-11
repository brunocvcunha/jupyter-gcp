FROM jupyter/scipy-notebook

RUN pip install gcsfs fastparquet pyarrow dask gsutil pycarol

USER root
RUN apt-get update
RUN apt-get install curl gnupg libsnappy-dev vim -y
RUN pip install python-snappy

RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

RUN apt-get update
RUN apt-get install google-cloud-sdk -y

RUN mkdir -p /data
RUN chmod -R 777 /data

WORKDIR /data
ENTRYPOINT start-notebook.sh
