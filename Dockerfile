FROM datamechanics/spark:2.4.7-hadoop-3.1.0-java-8-scala-2.11-python-3.7-dm17

USER root

WORKDIR /opt/spark

RUN pip install --upgrade pip

COPY  requirements.txt .
RUN pip3 install -r requirements.txt

CMD jupyter-lab --allow-root --no-browser --ip=0.0.0.0
