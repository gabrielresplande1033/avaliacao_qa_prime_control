require "cucumber"
require 'httparty'
require 'json'
require 'faker'
require 'rspec'
require 'pry-nav'
require "nokogiri"
require "json-schema"
require "json_matchers/rspec"

PAYLOAD_PATH = YAML.load_file("features/support/config/payload_path.yaml")

JsonMatchers.schema_root = "features/schemas"

Faker::Config.default_locale = "pt-BR"

$uri_base_url = "https://learningprime.com.br/api"