FROM python:3.8
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN apt-get update && apt-get install build-essential libjpeg-dev zlib1g-dev python3-dev -y
RUN pip install cython
RUN pip install --no-cache-dir "python-telegram-bot==13.15" tinydb wordcloud_fa stop-words
WORKDIR /app
COPY bot.py ./
CMD [ "python", "./bot.py" ]
