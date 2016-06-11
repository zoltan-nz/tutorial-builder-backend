## LOG

* Ruby 2.3
* Rails 5.0 rc1


    gem install nokogiri -- --use-system-libraries
    gem install rails --pre

Create new API app

    rails new tutorial-builder-backend --api --database=postgresql --skip-javascript --skip-sprockets -d

Add jsonapi-resources

    gem 'jsonapi-resources', '0.7.1.beta2'

Only the new beta version is compatible with rails v5 rc1.

    rails db:create

Create resource

    rails g jsonapi:resource sandbox

Create model

    rails g model sandbox name source

Update ApplicationController

    class ApplicationController < JSONAPI::ResourceController
    end

Create SandboxesController

    $ rails g controller sandboxes

    class SandboxesController < ApplicationController
    end

Add route

    Rails.application.routes.draw do
      jsonapi_resources :sandboxes
    end

Run migration

    rails db:migrate

Activate CORS
* Uncomment gem 'rack-cors',
* `bundle update`
* Uncomment config/initializers/cors


    Rails.application.config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'

        resource '*',
          headers: :any,
          methods: [:get, :post, :put, :patch, :delete, :options, :head]
      end
    end



## Reading

http://blog.arkency.com/2016/02/how-and-why-should-you-use-json-api-in-your-rails-api/
https://github.com/cerebris/jsonapi-resources
http://edgeguides.rubyonrails.org/api_app.html
https://blog.codeship.com/building-a-json-api-with-rails-5/

