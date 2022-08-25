# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

Things you may want to cover:

* Ruby version
- 3.0.1

* System dependencies
-  postgres

* Configuration
- bundle install

* Database creation
-  rails db:create

* Database initialization
-  rails db:migrate

* How to run the test suite
- bundle exec rspec

* Services (job queues, cache servers, search engines, etc.)
- whenever

* SMTP configuration for send message
- required registered mail_id. example <'your_email@gmail.com'>.
- required two step verification token as Password of registered mail_id.

* Run rake task 
- rake batch:send_messages

* API end point to create user
- http://localhost:3000/users/create
  method POST

* Deployment instructions

* ...