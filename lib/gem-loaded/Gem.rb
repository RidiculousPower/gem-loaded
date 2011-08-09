
module Gem
  
  ##################
  #  self.loaded?  #
  ##################
  
  def self.loaded?( gem_name )
    return @loaded_specs.has_key?( gem_name )
  end
  
end
