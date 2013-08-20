class ThreadsController < ApplicationController
  before_action :set_thread, only: [:show, :edit, :update, :destroy]

  # GET /threads
  # GET /threads.json
  def index
    @threads = Threads.all
  end

  # GET /threads/1
  # GET /threads/1.json
  def show
    redirect_to controller: 'posts', action: 'index', thread_id: @thread.id
  end

  # GET /threads/new
  def new
    @thread = Threads.new
  end

  # POST /threads
  # POST /threads.json
  def create
    @thread = Threads.new(thread_params)

    respond_to do |format|
      if @thread.save
        format.html { redirect_to @thread, notice: 'Threads was successfully created.' }
        format.json { render action: 'show', status: :created, location: @thread }
      else
        format.html { render action: 'new' }
        format.json { render json: @thread.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thread
      @thread = Threads.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thread_params
      params[:thread].permit(:title)
    end
end
