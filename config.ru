#!/usr/bin/env ruby
require 'rubygems'
require 'yaml'
require 'app'

gollum_path = File.expand_path(File.dirname(__FILE__)) # CHANGE THIS TO POINT TO YOUR OWN WIKI REPO
App.set(:gollum_path, gollum_path)
App.set(:default_markup, :markdown) # set your favorite markup language
App.set(:authorized_users, YAML.load_file(File.expand_path('users.yml', __DIR__)))
App.set(:wiki_options, {:universal_toc => false})
run App