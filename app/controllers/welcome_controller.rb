class WelcomeController < ApplicationController
  def index
    @message = Message.last
  end
end
