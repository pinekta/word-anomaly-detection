FROM tensorflow/tensorflow:2.4.2

WORKDIR /tmp
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    wget \
    unzip

WORKDIR /home
COPY requirements.txt .
RUN pip install --upgrade pip \
    && pip install -r requirements.txt \
    && jupyter nbextension enable --py widgetsnbextension
COPY work ./work
VOLUME work
EXPOSE 8889
WORKDIR /home/work
CMD jupyter lab --ip 0.0.0.0 --port 8889 --allow-root
