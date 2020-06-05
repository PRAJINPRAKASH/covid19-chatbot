FROM rasa/rasa
USER root
ENV BOT_ENV=production

COPY . /var/www
WORKDIR /var/www

RUN rasa train

ENTRYPOINT [ "rasa", "run", "-p", "8080"]