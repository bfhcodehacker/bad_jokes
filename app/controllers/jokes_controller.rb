class JokesController < ApplicationController
  def index
    @joke = Joke.order("RANDOM()").first
  end

  def new
    @joke = Joke.new
  end

end
