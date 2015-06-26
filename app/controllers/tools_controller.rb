class ToolsController < ApplicationController
  def index
    @tools = Tool.all
  end

  def show
    @tool = Tool.find(params[:id])
  end

  private

  def tool_params
    params.require(:tool).permit(:title, :subtitle, :description, :link)
  end
end
