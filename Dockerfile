FROM node:14-slim as node
LABEL maintainer "Designa <contato@designa.com.br>"

EXPOSE 3005
EXPOSE 49153

WORKDIR /app

RUN npm i -g npm@latest
RUN npm install -g react next

COPY ./docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
RUN chmod +x /docker-entrypoint.sh
