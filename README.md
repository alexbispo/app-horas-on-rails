# App Horas

This is my Ruby on Rails version of the App Horas, an web app to control work hours. I like implement this app whenever I start lerning new technologies.

MVP:

  - It should be possible register worked day.
  - It should be possible list all daily registers.
  - It should be possible list daily registers by month and year.
  - It should be possible remove a register.
  - It should be possible edit a register.
  - It should be possible have private access just using a private link.
  Without sign-in or sig-up.

Next features:

  - It should be possible export daily registers to CSV file.
  - It should be possible share a read only private link.

* Ruby version
  >= 2.5.5

* Database initialization
    $ docker-compose up -d

* Database creation
    $ docker exec -it <container> /bin/bash

    $ psql -U postgres

    postgres=# create user app-horas with createdb login password 'rails';

* How to run the test suite
    $ rails spec

* Deployment instructions
  Soon...
