class OwnerPostsController < ApplicationController
  before_action :set_owner_post, only: %i[ show edit update destroy ]

  # GET /owner_posts or /owner_posts.json
  def index
    @owner_posts = OwnerPost.all
  end

  # GET /owner_posts/1 or /owner_posts/1.json
  def show
  end

  # GET /owner_posts/new
  def new
    @owner_post = OwnerPost.new
  end

  # GET /owner_posts/1/edit
  def edit
  end

  # POST /owner_posts or /owner_posts.json
  def create
    @owner_post = OwnerPost.new(owner_post_params)

    respond_to do |format|
      if @owner_post.save
        format.html { redirect_to owner_post_url(@owner_post), notice: "Owner post was successfully created." }
        format.json { render :show, status: :created, location: @owner_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @owner_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /owner_posts/1 or /owner_posts/1.json
  def update
    respond_to do |format|
      if @owner_post.update(owner_post_params)
        format.html { redirect_to owner_post_url(@owner_post), notice: "Owner post was successfully updated." }
        format.json { render :show, status: :ok, location: @owner_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @owner_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /owner_posts/1 or /owner_posts/1.json
  def destroy
    @owner_post.destroy

    respond_to do |format|
      format.html { redirect_to owner_posts_url, notice: "Owner post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_owner_post
      @owner_post = OwnerPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def owner_post_params
      params.require(:owner_post).permit(:place, :date, :start_time, :end_time, :memo)
    end
end
