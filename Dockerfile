FROM openjdk:8-jre
MAINTAINER Vidal Soncco <vidalmsa@gmail.com>

RUN wget http://www2.sunat.gob.pe/facturador/SFS_v1.5.zip && \
    unzip SFS_v1.5.zip && \
    rm SFS_v1.5.zip && \
    chmod a+x /SFS_v1.5/EjecutarSFS.bat

WORKDIR /SFS_v1.5

EXPOSE 9000

CMD java -jar facturadorApp-1.5.jar server prod.yaml
