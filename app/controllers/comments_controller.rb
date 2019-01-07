class CommentsController < ApplicationController
  include CommentsHelper
  def create
    # @comment = Comment.create
    # fail
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    @comment.save

    flash[:notice] = "#{@comment.author_name} posted a comment."

    redirect_to article_path(@comment.article)
  end
end
