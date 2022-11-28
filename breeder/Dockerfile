FROM ubuntu:jammy

COPY breeder /
COPY ./wait-for-it.sh /wait-for-it.sh
COPY ./run.sh /run.sh
RUN chmod +x wait-for-it.sh run.sh
ENTRYPOINT ["./wait-for-it.sh", "rabbitmq:5672", "--", "./run.sh"]