FROM python:buster
LABEL org.opencontainers.image.authors="mateusriograndense@gmail.com"

# Coping instant client zip
RUN curl --output instantclient-basic-linux.x64-19.12.0.0.0dbru.zip \  
https://download.oracle.com/otn_software/linux/instantclient/1912000/instantclient-basic-linux.x64-19.12.0.0.0dbru.zip

# Installing oracle instant client
RUN mkdir /opt/oracle    
RUN unzip instantclient-basic-linux.x64-19.12.0.0.0dbru.zip
RUN mv instantclient_19_12 /opt/oracle
RUN rm *.zip

# Defining your work directory
WORKDIR usr/src/app
COPY requirements.txt ./

# Installing required dependencies
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
EXPOSE 8000
