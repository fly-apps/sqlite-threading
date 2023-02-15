# README

This project looks at possible threading issues in the Sqlite3 gem.

## Getting started

Clone this repo and install everything

```sh
$ git clone git@github.com:fly-apps/sqlite-threading.git
cd sqlite-threading
bundle
```

Setup and seed the Sqlite database

```sh
bin/rails db:prepare db:seed
```

Then fire up the server

```sh
bin/rails server
```

And fire of no more than 5 requests.

```
$ curl localhost:3000 &
$ curl localhost:3000 &
$ curl localhost:3000 &
```

Then watch the logs and behold!