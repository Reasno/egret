FROM node
ARG VERSION=master
ENV EGRET_PATH /app
RUN git clone --depth=1 --branch $VERSION https://github.com/egret-labs/egret-core.git /app
WORKDIR /app
RUN npm install -g
ENTRYPOINT ["egret"]
