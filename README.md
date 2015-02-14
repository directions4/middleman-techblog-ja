# Middleman-Techblog-ja

## About this project

[Middleman-Techblog-ja](https://github.com/directions4/middleman-techblog-ja) is a project template of Middleman and useful
starter kits to help you blogging faster.

## About Middleman

[Middleman](https://middlemanapp.com) is a static site generator using all the shortcuts and tools in modern web development.

## Includes

* [Slim](http://slim-lang.com/):
  Light weight template engine for Ruby
* [Coffeescript](http://coffeescript.org):
  Write javascript with simpler syntax
* [Sass](http://sass-lang.com):
  CSS with superpowers
* [Bourbon](http://bourbon.io):
  Sass mixin library
* [Neat](http://neat.bourbon.io):
  Semantic grid for Sass and Bourbon
* [Bitters](http://bitters.bourbon.io):
  Scaffold styles, variables and structure for Bourbon projects.
* [Middleman Live Reload](https://github.com/middleman/middleman-livereload):
  Reloads the page when files change
* [Middleman Deploy](https://github.com/karlfreeman/middleman-deploy):
  Deploy your Middleman build via rsync, ftp, sftp, or git (deploys to Github Pages by default)
* [Middleman Google Analytics](https://github.com/danielbayerlein/middleman-google-analytics):
  A Middleman plugin to handle generating your Google Analytics tracking code

## Getting Started

Set up your project in your code directory

```
git clone git@github.com:directions4/middleman-techblog-ja.git your-blog
cd your-blog
git remote rm origin
git remote add origin your-git-url
```

Install dependencies:

```
bundle install --path=vendor/bundle
```

Run the server

```
bundle exec middleman
```

## Settings

The blog setting file is located in `data/app.yml` . You can change site tile, author name, etc.


## Directories

Stylesheets, fonts, images, and JavaScript files go in the `source/assets/` directory.
Vendor stylesheets and JavaScripts should go in each of their `/vendor/` directories.

## Deployment

You can deploy contents with rsync, ftp, sftp and git. default is sftp.

```
bundle exec middleman build
bundle exec middleman deploy
```


## Contributing

If you have problems, please create a
[GitHub Issue](https://github.com/directions4/middleman-techblog-ja/issues).

Have a fix or want to add a feature?
[Pull Requests](https://github.com/directions4/middleman-techblog-ja/pulls) are welcome!

## License

Copyright © 2015 Satoru Shikata. Middleman-Techblog-ja is free software, and may be redistributed under the terms specified in the [license](LICENSE).