FROM python:3.7
LABEL org.opencontainers.image.authors="mateusriograndense@gmail.com"

# Installing tools
RUN apt-get update \
   && apt-get -y install libaio1

# Installing oracle instant client zip
RUN mkdir /opt/oracle    
COPY instantclient-basic-linux.x64-19.12.0.0.0dbru.zip ./
RUN unzip instantclient-basic-linux.x64-19.12.0.0.0dbru.zip
RUN mv instantclient_19_12 /opt/oracle
RUN rm *.zip
RUN echo /opt/oracle/instantclient_19_12* > /etc/ld.so.conf.d/oracle-instantclient.conf && ldconfig


# Defining your work directory
WORKDIR usr/src/app
COPY requirements.txt ./

# Installing required dependencies
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
EXPOSE 8000
