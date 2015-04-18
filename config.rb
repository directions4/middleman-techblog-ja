require 'slim'
Slim::Engine.disable_option_validator!

###
# Blog settings
###

Time.zone = "Tokyo"

activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  # blog.prefix = "blog"
  blog.permalink = "{year}/{month}/{day}/{title}.html"
  # Matcher for blog source files
  blog.sources = "posts/{year}-{month}-{day}-{title}.html"
  blog.taglink = "tags/{tag}.html"
  blog.layout = "layout"
  blog.summary_separator = /(READMORE)/
  blog.summary_length = 60
  blog.year_link = "{year}.html"
  blog.month_link = "{year}/{month}.html"
  blog.day_link = "{year}/{month}/{day}.html"
  blog.default_extension = ".markdown"
  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"
  # Enable pagination
  blog.paginate = true
  blog.per_page = 10
  blog.page_link = "page/{num}"
end

page "/feed.xml", :layout => false
page "/sitemap.xml", :layout => false

###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", layout: false
#
# With alternative layout
# page "/path/to/file.html", layout: :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'assets/css'
set :js_dir, 'assets/js'
set :images_dir, 'images'

# Markdown settings
set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true, :tables => true, :autolink => true, :footnote => true

# Syntax highlight settings
activate :syntax, :line_numbers => true

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  activate :relative_assets
  set :relative_links, true

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end

###
# Google Analytics
###

activate :google_analytics do |ga|
  ga.tracking_id = data.app.ga_tracking_id
end

###
# Deployment
###

# Github
# activate :deploy do |deploy|
#   deploy.build_before = true
#   deploy.method = :git
# end

#sftp
activate :deploy do |deploy|
  deploy.method   = :sftp
  deploy.host     = data.app.deploy_host
  deploy.port     = data.app.deply_port
  deploy.path     = data.app.deploy_path
  # Optional Settings
  deploy.user     = data.app.deploy_user
  # deploy.password = data.app.deploy_password
end

# rsync
# activate :deploy do |deploy|
#   deploy.method = :rsync
#   deploy.host = data.app.deploy_host
#   deploy.path = data.app.deploy_path
# # Optional Settings
# # deploy.user  = data.app.deploy_user # no default
# # deploy.port  = data.app.deply_port # ssh port, default: 22
# # deploy.clean = true # remove orphaned files on remote host, default: false
# # deploy.flags = '-rltgoDvzO --no-p --del' # add custom flags, default: -avz
# end

helpers do
  def nav_link(link_text, page_url, options = {})
    options[:class] ||= ""
    if current_page.url.length > 1
      current_url = current_page.url.chop
    else
      current_url = current_page.url
    end
    options[:class] << " active" if page_url == current_url
    link_to(link_text, page_url, options)
  end
end

###
# Disqus
###

# for Dev
configure :development do
  activate :disqus do |d|
    d.shortname = false
  end
end

# for build
configure :build do
  activate :disqus do |d|
    d.shortname = data.app.disqus_shortname
  end
end