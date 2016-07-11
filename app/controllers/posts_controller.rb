class PostsController < ApplicationController

	def index 
		@posts = Post.all 
	end 

	def show 
		@post = Post.find(params[:id])
	end 

	def new 
		@post = Post.new 
	end 

	def create 
		@post = Post.create(params[:post].permit(:text, :title))
		redirect_to(@post)
	end 

	def edit 
		@post = Post.find(params[:id])
	end 

	def update
		@post = Post.find(params[:id])
		@post.update(params[:post].permit(:text, :title))
		redirect_to(@post)
	end 

	def destroy 
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to(posts_url)
	end 

end
