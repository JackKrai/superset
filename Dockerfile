FROM apache/superset

USER root

VOLUME /docker
WORKDIR /docker

COPY . . 

ENV HOST=0.0.0.0

ENV SUPERSET_CONFIG_PATH=superset_config.py

RUN pip install --no-cache-dir -r requirements.txt

ENV ADMIN_USERNAME='kritawat.kra'
ENV ADMIN_PASSWORD='test'
ENV ADMIN_EMAIL='kritawat.kra@ascendcorp.com'

ENV PORT=8088
EXPOSE 8088

USER superset

ENTRYPOINT [ "./superset-init.sh" ]
