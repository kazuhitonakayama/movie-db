FROM ruby:2.6.2
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn

WORKDIR /movie-db

COPY Gemfile /movie-db/Gemfile
COPY Gemfile.lock /movie-db/Gemfile.lock

RUN gem install bundler && bundle install && bundle update

COPY . /movie-db
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]