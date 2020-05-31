FROM rasa/rasa

ENV BOT_ENV=production

COPY . /var/www
WORKDIR /var/www

RUN pip3 install rasa
RUN rasa train

ENTRYPOINT [ "rasa", "run", "-p", "8080"]