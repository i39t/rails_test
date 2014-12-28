class TweetsController < ApplicationController
  def index
   @tweets = Tweet.all
  end

  def show
  end

  def new
  end

  def create
   attr = params.require(:tweet).permit(:title,:content)
   @tweet = Tweet.create(attr)
   redirect_to '/tweets'
  end

end
