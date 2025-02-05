FROM ruby:2.7.8

RUN gem install bundler -v 2.1.4

WORKDIR /usr/src/app
ADD . /usr/src/app

RUN apt update
RUN bundle install

ENV RACK_ENV production

ENTRYPOINT ["rackup", "-o", "0.0.0.0"]
