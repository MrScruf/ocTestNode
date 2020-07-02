FROM centos:7

RUN yum update && yum upgrade && yum install nodejs git

COPY index.js app/
COPY package.json app/
COPY package-lock.json app/

RUN cd app

RUN npm install

EXPOSE 3000/tcp

RUN nodejs index.js
