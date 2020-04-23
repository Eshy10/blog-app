class CommentsController < ApplicationController

    def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(params[:comment].permit(:author_name, :body))
    redirect_to article_path(@article)
    end

    def destroy
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article)
    end
end
