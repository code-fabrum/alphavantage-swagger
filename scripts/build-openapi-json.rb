#!/usr/bin/env ruby
# frozen_string_literal: true

require "json"
require "yaml"

source_path = ARGV.fetch(0, "openapi.yaml")
output_path = ARGV.fetch(1, "openapi.json")

specification = YAML.load_file(source_path)
File.write(output_path, JSON.pretty_generate(specification) + "\n")
