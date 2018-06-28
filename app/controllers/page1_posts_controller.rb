class Page1PostsController < ApplicationController
  before_action :set_page1_post, only: [:show, :edit, :update, :destroy]

  # GET /page1_posts
  # GET /page1_posts.json
  def index
    @page1_posts = Page1Post.all
  end

  # GET /page1_posts/1
  # GET /page1_posts/1.json
  def show
  end

  # GET /page1_posts/new
  def new
    @page1_post = Page1Post.new
  end

  # GET /page1_posts/1/edit
  def edit
  end

  # POST /page1_posts
  # POST /page1_posts.json
  def create
    @page1_post = Page1Post.new(page1_post_params)

    respond_to do |format|
      if @page1_post.save
        format.html { redirect_to @page1_post, notice: 'Page1 post was successfully created.' }
        format.json { render :show, status: :created, location: @page1_post }
      else
        format.html { render :new }
        format.json { render json: @page1_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /page1_posts/1
  # PATCH/PUT /page1_posts/1.json
  def update
    respond_to do |format|
      if @page1_post.update(page1_post_params)
        format.html { redirect_to @page1_post, notice: 'Page1 post was successfully updated.' }
        format.json { render :show, status: :ok, location: @page1_post }
      else
        format.html { render :edit }
        format.json { render json: @page1_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page1_posts/1
  # DELETE /page1_posts/1.json
  def destroy
    @page1_post.destroy
    respond_to do |format|
      format.html { redirect_to page1_posts_url, notice: 'Page1 post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page1_post
      @page1_post = Page1Post.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page1_post_params
      params.require(:page1_post).permit(:title, :body, :description, :image)
    end
end


