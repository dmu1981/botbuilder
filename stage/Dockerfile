FROM ubuntu:jammy

#RUN apt-get update && apt-get install -y curl
COPY ./simulation /simulation
COPY ./bot /bot
COPY ./bot/config.yaml / 
COPY ./wait-for-it.sh /wait-for-it.sh
COPY ./run.sh /run.sh
COPY ./filebeat-8.5.2-linux-x86_64.tar.gz /filebeat.tar.gz
RUN tar xzvf filebeat.tar.gz
COPY ./filebeat.yml /filebeat.yml
RUN chmod go-w /filebeat.yml
RUN chmod +x simulation/bot.x86_64 && chmod +x bot/aptivbot && chmod +x run.sh && chmod +x wait-for-it.sh
#HEALTHCHECK CMD (curl --fail http://localhost:4444/api & curl --fail http://localhost:3333) || (exit 1)
#CMD ["./wait-for-it.sh", "rabbitmq:5672", "--", "./run.sh"]
CMD "./run.sh"