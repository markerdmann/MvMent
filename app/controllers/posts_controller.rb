class PostsController < ApplicationController
  
  def new
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end
  
  # POST /channels
  # POST /channels.json
  def create
    @post = Post.new(params[:post].merge(:channel_id => params[:channel_id]))

    respond_to do |format|
      if @post.save
        format.html { redirect_to :root, notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
end
