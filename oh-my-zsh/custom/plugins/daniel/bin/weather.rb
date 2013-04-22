#!/usr/bin/env ruby
# encoding: utf-8
require 'net/http'
require 'json'

response = Net::HTTP.get("ip-weather.herokuapp.com", "/")
json = JSON.parse(response)
puts "#{json["city"]}: #{json["weather"]}, #{json["temperature"]}°C, #{json["humidity"]}"

