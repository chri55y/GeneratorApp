class SecondBlogsController < ApplicationController
  before_action :set_second_blog, only: [:show, :edit, :update, :destroy]

  # GET /second_blogs
  # GET /second_blogs.json
  def index
    @second_blogs = SecondBlog.all
  end

  # GET /second_blogs/1
  # GET /second_blogs/1.json
  def show
  end

  # GET /second_blogs/new
  def new
    @second_blog = SecondBlog.new
  end

  # GET /second_blogs/1/edit
  def edit
  end

  # POST /second_blogs
  # POST /second_blogs.json
  def create
    @second_blog = SecondBlog.new(second_blog_params)

    respond_to do |format|
      if @second_blog.save
        format.html { redirect_to @second_blog, notice: 'Second blog was successfully created.' }
        format.json { render :show, status: :created, location: @second_blog }
      else
        format.html { render :new }
        format.json { render json: @second_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /second_blogs/1
  # PATCH/PUT /second_blogs/1.json
  def update
    respond_to do |format|
      if @second_blog.update(second_blog_params)
        format.html { redirect_to @second_blog, notice: 'Second blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @second_blog }
      else
        format.html { render :edit }
        format.json { render json: @second_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /second_blogs/1
  # DELETE /second_blogs/1.json
  def destroy
    @second_blog.destroy
    respond_to do |format|
      format.html { redirect_to second_blogs_url, notice: 'Second blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_second_blog
      @second_blog = SecondBlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def second_blog_params
      params.require(:second_blog).permit(:title)
    end
end
