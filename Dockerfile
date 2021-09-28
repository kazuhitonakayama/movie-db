FROM ruby:2.6.2
# sudo,nodejsのインストールの下準備
RUN apt update && apt install -y sudo && curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - && \
    apt update && apt install -y nodejs

# yarnインストールの下準備
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list && \
    apt update && apt install -y yarn

RUN apt update && apt install -y \
    build-essential \
    libpq-dev \
    postgresql-client

WORKDIR /movie-db

COPY Gemfile /movie-db/Gemfile
COPY Gemfile.lock /movie-db/Gemfile.lock

RUN gem install bundler && bundle install

COPY . /movie-db
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
