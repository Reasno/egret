ARG VERSION=master
FROM node
ARG VERSION
ENV EGRET_PATH /app
RUN git clone --depth=1 --branch <tag_name> https://github.com/egret-labs/egret-core.git /app
WORKDIR /app
RUN npm install -g
ENTRYPOINT ["egret"]
