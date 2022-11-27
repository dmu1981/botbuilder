FROM ubuntu:18.04

COPY ./simulation /simulation
COPY ./bot /bot
COPY ./bot/config.yaml / 
RUN chmod +x simulation/bot.x86_64 && chmod +x bot/aptivbot
CMD /simulation/bot.x86_64 &/bot/aptivbot