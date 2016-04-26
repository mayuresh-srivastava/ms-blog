class SayController < ApplicationController
  def hello
    @var = "Hi there!"
    @now = Time.now
    
    @user = User.new(params[:user])
             if(request.post? and @user.save)
                   flash[:notice] = “Account Created Successfully”
                   redirect_to :controller => ‘yourloginsuccessfullycontrollername’
             end
  end
  
  def goodbye
    
  end
  
end
