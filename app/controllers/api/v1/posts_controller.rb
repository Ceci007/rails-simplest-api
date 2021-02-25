module Api
  module V1
    class PostsController < ApplicationController
      before_action :set_article, only: [:show, :destroy]

      def index 
        render json: Article.all
      end

      def create 
      end

      def show 
      end

      def destroy 
      end

      private
      def set_article 
        @article = Article.find(params[:id])
      end

      def article_params 
        params.permit(:title)
      end
    end
  end
end