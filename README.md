# README

# API
This app is using TMDB-API for collecting movie info.

## How to build

```
> docker compose build
> docker compose up

# at another terminal
> docker compose exec web bash
> bundle exec rails webpacker:install
> bundle exec rails db:create
> bundle exec rails db:migrate
```
