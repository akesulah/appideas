class Api::IdeasController < ApplicationController

  def index
    @ideas = Idea.all
  end

  def show
    @idea = Idea.find(params[:id])
    @comments = Comment.find_comments_for_commentable("Idea", @idea.id)
  end

end
