class Api::V1::IdeasController < ApplicationController

  api :GET ,'/ideas', "This will get list of all the ideas"
  def index
    @ideas = Idea.all
    render json: @ideas, root: 'data'
  end
end
