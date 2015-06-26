class TechniquesController < ApplicationController
  def index
    @technique = Technique.all
  end

  def show
    @technique = Technique.find(params[:id])
  end
end
