require 'redmine'
require 'prevent_multiple_submission_hooks'

Redmine::Plugin.register :redmine_prevent_multiple_submission do
  name 'Redmine Prevent Multiple Submission plugin'
  author 'Masamitsu MURASE'
  description 'This plugin prevents multiple submission.'
  version '0.0.3'
  url 'https://github.com/masamitsu-murase/redmine_prevent_multiple_submission/'
  author_url 'https://github.com/masamitsu-murase/'
end
