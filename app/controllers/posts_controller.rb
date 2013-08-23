class PostsController < ApplicationController
  before_action :set_thread
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = @thread.posts
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = @thread.posts.new
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = @thread.posts.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to thread_posts_url, notice: 'Post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @post }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = @thread.posts.find(params[:id])
    end

    def set_thread
      @thread = Threads.find(params[:thread_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params[:post].permit(:comment, :image)
    end
end
