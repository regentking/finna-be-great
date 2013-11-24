class PostsController < ApplicationController
    def index
        @post = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        # add logic
    end

    def edit
    end

    def create
        @post = Post.new(post_params)

        @post.save
        redirect_to @post
    end

    def update
    end

    def delete
    end

    # Helper functions
    private
        def post_params
            params.require(:post).permit(:title, :text)
        end
end

# added restful routes TODO views
