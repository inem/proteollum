#!/usr/bin/env ruby
__DIR__ = File.expand_path(File.dirname(__FILE__))
$: << __DIR__

require 'rubygems'
require 'yaml'
require 'app'

App.set(:gollum_path,  __DIR__ + "/wikidata")
App.set(:default_markup, :markdown) # set your favorite markup language
App.set(:authorized_users, YAML.load_file(File.expand_path('users.yml', __DIR__)))
App.set(:wiki_options, {:universal_toc => false})
run App