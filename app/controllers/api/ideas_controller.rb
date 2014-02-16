class Api::IdeasController < ApplicationController

  def index
    @ideas = Idea.all
  end

  def show
    @idea = Idea.find(params[:id])
    @comments = Comment.find_comments_for_commentable("Idea", @idea.id)
  end

  def create
    @idea = Idea.create(api_idea_params)
  end

  def update
    @idea = Idea.find(params[:id])
    commentBody = params[:comment]
    user = User.first
    comment = Comment.build_from(@idea, user.id, commentBody)
    comment.save
  end

  def api_idea_params
    params.require(:idea).permit(:name, :desc, :keywords)
  end
end

