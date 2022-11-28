FROM ubuntu:jammy

COPY ./simulation /simulation
COPY ./bot /bot
COPY ./bot/config.yaml / 
COPY ./wait-for-it.sh /wait-for-it.sh
COPY ./run.sh /run.sh
RUN chmod +x simulation/bot.x86_64 && chmod +x bot/aptivbot && chmod +x run.sh && chmod +x wait-for-it.sh
CMD ["./wait-for-it.sh", "rabbitmq:5672", "--", "./run.sh"]