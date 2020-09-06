FROM ruby:2.6.6

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN mkdir /usr/src/app/public
COPY public/ /usr/src/app/public/

COPY ruby/config.ru /usr/src/app/config.ru
COPY ruby/Gemfile /usr/src/app/
COPY ruby/Gemfile.lock /usr/src/app/
COPY ruby/newrelic.yml /usr/src/app/newrelic.yml

RUN gem install bundler -v 2.0.1

RUN bundle install