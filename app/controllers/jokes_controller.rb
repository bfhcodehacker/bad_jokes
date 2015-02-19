class JokesController < ApplicationController
  def index
    @joke = Joke.order("RANDOM()").first
  end

  def new
    @joke = Joke.new
  end

  def create
    @joke = Joke.create(joke_params)
    if @joke.invalid?
      flash[:error] = '<strong> You must enter a question and answer </strong>'
    end

    redirect_to root_path
  end

  private

  def joke_params
    params.require(:joke).permit(:question, :answer)
  end

end
