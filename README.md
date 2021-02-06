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