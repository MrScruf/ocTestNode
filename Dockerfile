FROM centos:7

RUN yum install -y epel-release
RUN yum install -y nodejs git npm

COPY index.js app/
COPY package.json app/
COPY package-lock.json app/

WORKDIR app

RUN npm install

EXPOSE 3000/tcp

CMD node index.js
