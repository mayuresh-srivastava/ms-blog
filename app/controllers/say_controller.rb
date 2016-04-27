class SayController < ApplicationController
  def hello
    @var = "Hi there!"
    @now = Time.now
    
  end
  
  def goodbye
    
  end
  
end
