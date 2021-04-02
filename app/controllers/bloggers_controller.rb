class BloggersController < ApplicationController
    def index
        @bloggers = Blogger.all
    end

    def show
        @blogger = Blogger.find(params[:id])
    end

    def new
        @blogger = Blogger.new
    end

    def create
        @blogger = Blogger.create(blogger_params)
        redirect_to blogger_path(@blogger)
        #"bloggers_path" sends to index [all bloggers]
    end

    def blogger_params
        params.require(:blogger).permit(:name, :bio, :age)
    end
end

##### how to make total likes prettier ####


