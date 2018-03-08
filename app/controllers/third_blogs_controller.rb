class ThirdBlogsController < ApplicationController
  before_action :set_third_blog, only: [:show, :edit, :update, :destroy]

  # GET /third_blogs
  # GET /third_blogs.json
  def index
    @third_blogs = ThirdBlog.all
  end

  # GET /third_blogs/1
  # GET /third_blogs/1.json
  def show
  end

  # GET /third_blogs/new
  def new
    @third_blog = ThirdBlog.new
  end

  # GET /third_blogs/1/edit
  def edit
  end

  # POST /third_blogs
  # POST /third_blogs.json
  def create
    @third_blog = ThirdBlog.new(third_blog_params)

    respond_to do |format|
      if @third_blog.save
        format.html { redirect_to @third_blog, notice: 'Third blog was successfully created.' }
        format.json { render :show, status: :created, location: @third_blog }
      else
        format.html { render :new }
        format.json { render json: @third_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /third_blogs/1
  # PATCH/PUT /third_blogs/1.json
  def update
    respond_to do |format|
      if @third_blog.update(third_blog_params)
        format.html { redirect_to @third_blog, notice: 'Third blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @third_blog }
      else
        format.html { render :edit }
        format.json { render json: @third_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /third_blogs/1
  # DELETE /third_blogs/1.json
  def destroy
    @third_blog.destroy
    respond_to do |format|
      format.html { redirect_to third_blogs_url, notice: 'Third blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_third_blog
      @third_blog = ThirdBlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def third_blog_params
      params.require(:third_blog).permit(:title)
    end
end
