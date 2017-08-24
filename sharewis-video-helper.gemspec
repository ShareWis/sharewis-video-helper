$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sharewis/video/helper/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sharewis-video-helper"
  s.version     = Sharewis::Video::Helper::VERSION
  s.authors     = [""]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = "Summary of Sharewis::Video::Helper."
  s.description = "Description of Sharewis::Video::Helper."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "> 3.2.0"
end
