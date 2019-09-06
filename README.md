# georails
Ruby server side that adds, stores, updates and deletes markers

## prerequisites
ruby

rails

sqlite3

rake

## Ruby version
2.6.3

## Database creation
```rails g model Marker guid:string latitude:float longitude:float title:string```

```rake db:create```

```rake db:migrate```

## Database initialization
If initial data is needed run

```rake db:seed```

## Services
GET ```/v1/markers``` fetches all markers
POST ```/v1/markers``` creates new marker
GET ```/v1/markers/:id``` fetches one marker
PUT ```/v1/markers/:id``` updates a marker
DELETE ```/v1/markers/:id``` deletes a marker

## Run the apllication
```bundle install```

```rails server -p 3000```


