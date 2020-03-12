FROM node
ENV EGRET_PATH /app
ADD . /app
WORKDIR /app
RUN npm install -g
ENTRYPOINT ["egret"]