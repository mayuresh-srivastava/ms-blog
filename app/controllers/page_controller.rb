class PageController < ApplicationController
  def home
  end

  def about_us
  end

  def contact_us
    
    @submitted = params["commit"]
    @name = params["name"]
    @form_error = false
    
    if @name == ""
      flash.now['error'] = "Must enter your name!"
      @form_error = true
    end 
    
    @email = params["email"]
    @question = params["question"]
    @newsletter = params["newsletter"] == "newsletter"
    @gender = params["gender"]
    @male = "gender == male" #true or false
    @female = "gender == female" #true or false
    @product = params["product"]
    
  end

  def products
  end

  def newsletter
  end

  def blog
  end

  def calender
  end

  def articles
  end

  def login
  end
  
end
