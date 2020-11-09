FROM openjdk:8-jre
LABEL MAINTAINER="YINUXY admin@yinuxy.com"

ENV TZ=Asia/Shanghai

WORKDIR /app

RUN curl -L0 https://github.com/halo-dev/halo/releases/download/v1.4.2/halo-1.4.2.jar

EXPOSE $PORT

CMD java -Xms256m -Xmx256m -jar -Dserver.port=$PORT halo-1.4.2.jar