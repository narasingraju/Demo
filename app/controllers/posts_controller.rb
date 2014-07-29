class PostsController < ApplicationController
	before_filter :authenticate_user!
	def new
		@post = Post.new
	end

	def create
  	  @post = Post.new(params[:post])
  	  if @post.save
  		redirect_to posts_path
  	  else
  		render action: "new"
  	  end
  end

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end 

	def update
		@post = Post.find(params[:id])
        respond_to do |format|
          if @post.update_attributes(params[:post])
            format.html { redirect_to @post, :notice => 'Post was successfully updated.' }
          else
            format.html { render :action => "edit" }
            format.json { render :json => @post.errors, :status => :unprocessable_entity }
          end
        end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
	end
end
