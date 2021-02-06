## Steps to recreate app

Here are all the steps to recreate this example application from scratch, assuming Ruby and Rails are installed:

### Creating a new Rails application

``` console
$ rails new drt-example --minimal
$ cd drt-example
$ rails db:create
```

### Add a basic controller

This step is optional, but useful to verify that the route translation setup is working properly.

Create a new controller:

``` console
$ rails g controller home index example
```

Set up the views with some content:

`app/views/home/index.html.erb`

``` erb
<h1><%= t(:greetings) %></h1>
<%= link_to t(:example), action: :example %>
```

`app/views/home/example.html.erb`

``` erb
<%= I18n.locale %>
```

### Set up localized routing

Add `route_translator` to the Gemfile.

Set up localized routes in `config/routes.rb`:

``` ruby
Rails.application.routes.draw do
  localized do
    root to: 'home#index'
    get 'example', to: 'home#example'
  end
end
```

Set up locales:

`config/locales/en.yml`

``` yaml
en:
  greetings: Welcome
  example: Example
```

`config/locales/de.yml`

``` yaml
de:
  greetings: Willkommen
  example: Beispiel
  routes:
    example: beispiel
```

Make sure locale is set for controller/view in `app/controllers/application_controller.rb`:

``` ruby
class ApplicationController < ActionController::Base
  around_action :set_locale_from_url
end
```

At this point, everything works as expected.