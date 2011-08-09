
require_relative '../lib/gem-loaded.rb'

describe Gem do

  #############
  #  loaded?  #
  #############
  
  it 'can report whether a gem is loaded via rubygems' do
    Gem.loaded?( 'non-existant-gem' ).should == false
    Gem.loaded?( 'module-cluster' ).should == false
    # I have module cluster - you probably won't.
    # There aren't built-in gems, so difficult to say what the best way is to test on systems other than mine.
    require 'module-cluster'
    Gem.loaded?( 'module-cluster' ).should == true
  end
  
end
