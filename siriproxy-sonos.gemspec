# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "siriproxy-sonos"
  s.version     = "0.0.2"
  s.authors     = ["Justin Schumacher"]
  s.email       = [""]
  s.homepage    = "http://github.com/thinkingtree/siriproxy-sonos"
  s.summary     = %q{A Siri Proxy Plugin for controlling Sonos devices}
  s.description = %q{See https://github.com/plamoni/SiriProxy}

  s.rubyforge_project = "siriproxy-sonos"

  s.files         = `git ls-files 2> /dev/null`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/* 2> /dev/null`.split("\n")
  s.executables   = `git ls-files -- bin/* 2> /dev/null`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "sonos"
end