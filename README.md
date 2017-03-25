# Multi-User Spreadsheet

## Using

- rails 5.0
- ActionCable
- RethinkDB
- NoBrainer gem

## Install RethinkDB

```sh
brew install rethinkdb
brew info rethinkdb
brew services start rethinkdb
```

You can visit [http://localhost:8080/](http://localhost:8080/) to browse around its administration interface.

## Run Server

```sh
bundle
rails s
```

## Demo

![spreadsheets](https://raw.githubusercontent.com/akiicat/spreadsheet/master/public/spreadsheets.gif)
