FROM centos:7

RUN sudo yum update && sudo yum upgrade && sudo yum install nodejs git

COPY index.js app/
COPY package.json app/
COPY package-lock.json app/

RUN cd app

RUN npm install

EXPOSE 3000/tcp

RUN nodejs index.js