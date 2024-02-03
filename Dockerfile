FROM ruby:3.1.3
ARG RUBYGEMS_VERSION=3.1.30

WORKDIR /movie_line_bot
COPY Gemfile Gemfile.lock /movie_line_bot/
RUN bundle install
COPY . /movie_line_bot/

CMD ["rails", "server", "-b", "0.0.0.0"]
