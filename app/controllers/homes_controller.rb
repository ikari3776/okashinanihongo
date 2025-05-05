class HomesController < ApplicationController
  def index
    @content = Content.new
  end

  def result
    @content = Content.new(content_params)
    @result = @content.okaniho
    render :index
  end

  private

  def content_params
    params.require(:content).permit(:word)
  end
end
