class WelcomeController < ApplicationController
  def index
    @number_of_yurusu = Yurusu.count
  end

  def count_up
    unless Yurusu.exists?(token: session[:token])
      @yurusu = Yurusu.new
      @yurusu.token = SecureRandom.uuid
      session[:token] = @yurusu.token

      @yurusu.save
    end

    render nothing: true
  end
end
