# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "fluent-plugin-yohoushi"
  s.version     = "0.0.2"
  s.authors     = ["Naotoshi Seo"]
  s.email       = ["sonots@gmail.com"]
  s.homepage    = "https://github.com/sonots/fluent-plugin-yohoushi"
  s.summary     = "fluentd plugin to post data to yohoushi"
  s.description = s.summary
  s.licenses    = ["MIT"]

  s.rubyforge_project = "fluent-plugin-yohoushi"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "fluentd"
  s.add_runtime_dependency "multiforecast-client"
  s.add_runtime_dependency "yohoushi-client"

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "pry"
  s.add_development_dependency "pry-nav"
end
