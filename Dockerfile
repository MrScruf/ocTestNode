FROM centos:7

RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum install -y nodejs git

COPY index.js app/
COPY package.json app/
COPY package-lock.json app/

WORKDIR app

RUN npm install

EXPOSE 3000/tcp

CMD node index.js
