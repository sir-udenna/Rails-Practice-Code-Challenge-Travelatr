class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @bloggers = Blogger.all
        @destinations = Destination.all
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        redirect_to posts_path(@post)
    end

    def post_params
        params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
    end



end
