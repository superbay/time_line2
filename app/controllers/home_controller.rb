class HomeController < ApplicationController
  respond_to :json, :html
  def list
    render text: 'ok' 
  end

  def index
    respond_with @tweets = Tweet.fetch(20)
  end
end
