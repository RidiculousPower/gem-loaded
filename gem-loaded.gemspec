require 'date'

Gem::Specification.new do |spec|

  spec.name                      =  'gem-loaded'
  spec.rubyforge_project         =  'gem-loaded'
  spec.version                   =  '1.0.0'

  spec.summary                   =  "Reports whether a given gem is loaded."
  spec.description               =  "Provides Gem.loaded?."

  spec.authors                   =  [ 'Asher' ]
  spec.email                     =  'asher@ridiculouspower.com'
  spec.homepage                  =  'https://github.com/RidiculousPower/gem-loaded'

  # just because we use it as an example
  spec.add_development_dependency   'module-cluster'

  spec.date                      =  Date.today.to_s
  
  # ensure the gem is built out of versioned files
  # also make sure we include the bundle since we exclude it from git storage
  spec.files                     = Dir[ '{lib,spec}/**/*',
                                        'README*', 
                                        'LICENSE*' ] & `git ls-files -z`.split("\0")

end
