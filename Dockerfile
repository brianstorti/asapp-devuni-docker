FROM ruby:2.4.2

RUN mkdir /app
RUN gem install sinatra sinatra-reloader redis
RUN apt-get update && apt-get install cowsay -y

ENV PATH="$PATH:/usr/games"

WORKDIR /app

COPY . /app/

CMD ["ruby", "app.rb"]
