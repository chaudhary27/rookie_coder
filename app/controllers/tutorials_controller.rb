class TutorialsController < ApplicationController

  def index
    @tutorials = Tutorial.all
  end

  def new
    @tutorial = Tutorial.new
  end

  def create
    Tutorial.create(tutorial_params)
    redirect_to tutorials_path
  end

  private

  def tutorial_params
    params.require(:tutorial).permit(:language, :category, :difficulty, :link)
  end


end
