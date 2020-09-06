FROM ruby:2.6.6

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN gem install bundler

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/

RUN bundle install