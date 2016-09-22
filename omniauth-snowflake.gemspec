# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-snowflake/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Patrick Robertson"]
  gem.email         = ["rubygems@iorahealth.com"]
  gem.description   = %q{Omniauth Strategy for Iora's OAuth provider, Snowflake}
  gem.summary       = %q{Omniauth Strategy for Snowflake}
  gem.homepage      = "https://github.com/iorahealth/omniauth-snowflake"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.name          = "omniauth-snowflake"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Snowflake::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.4.0'
end
