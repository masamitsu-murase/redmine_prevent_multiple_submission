require 'redmine'
require 'prevent_multiple_submission_hooks'

Redmine::Plugin.register :redmine_prevent_multiple_submission do
  name 'Redmine Prevent Multiple Submission plugin'
  author 'Masamitsu MURASE'
  description 'This plugin prevents multiple submission.'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end
