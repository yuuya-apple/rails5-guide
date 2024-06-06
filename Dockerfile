FROM ruby:3.2.1
RUN apt-get update -qq \
    && apt-get  install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev libncurses5-dev libffi-dev libgdbm-dev zlib1g-dev \
    && gem update

WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN bundle install