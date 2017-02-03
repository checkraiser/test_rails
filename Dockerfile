# Generated by Cloud66 Starter
FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y build-essential nodejs 

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install

ADD . $APP_HOME
