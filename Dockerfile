FROM ruby:3.1.2

RUN apt-get update -qq && apt-get install -y build-essential default-libmysqlclient-dev

RUN mkdir /effective_testing_with_rspec3_in_docker
WORKDIR /effective_testing_with_rspec3_in_docker

ADD Gemfile /effective_testing_with_rspec3_in_docker/Gemfile
ADD Gemfile.lock /effective_testing_with_rspec3_in_docker/Gemfile.lock

RUN bundle install