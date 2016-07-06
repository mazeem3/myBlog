class BlogsController < ApplicationController
  def blog
      @blog.title = params[:blog][:title]
      @blog.subtitle = params[:blog][:subtitle]
      @blog.author = params[:blog][:author]
  end

  def index
      @blogs = Blog.all
   end

  def show
      @blog = Blog.find_by id: params[:id]
  end

  def new
      @blog = Blog.new
  end

  def create
      @blog = Blog.new
      blog
      if @blog.save
          redirect_to root_path, notice: 'Blog Created!'
      else
          render :new
      end
  end

  def edit
      @blog = Blog.find_by id: params[:id]
  end

  def update
      @blog = Blog.find_by id: params[:id]
      blog
      if @blog.save
          redirect_to root_path
      else
          render :edit
      end
  end

  def delete
      Blog.find(params[:id]).destroy
      redirect_to root_path
  end

end
