class StaticPagesController < ApplicationController
  def about
  	@about_text="This is about page and I am in controller part!"
  end

  def help
  end
end
