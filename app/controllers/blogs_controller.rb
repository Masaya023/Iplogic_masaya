class BlogsController < ApplicationController
  
  def index	#タイ焼きをお客さんに渡す #一覧画面
  	  @blogs = Blog.all
  end

  def new #注文を受ける
   	  @blog = Blog.new
  end
 
  def create  #タイ焼きを作る人
  	  @blog = Blog.new(blog_params)
  	  @blog.save
  	  redirect_to '/blogs' #商品を渡すのをお願いする
  end

  def show #詳細画面
      @blog = Blog.find(params[:id])
  end

  def edit
  	  @blog = Blog.find(params[:id])
  end

  def update
  	  @blog = Blog.find(params[:id])
      @blog.update(blog_params)
      redirect_to '/blogs'
  end	

  def destroy
  	  @blog = Blog.find(params[:id])
  	  @blog.destroy
  	  redirect_to '/blogs'
  end

  	


  private # 下は、すべてが影響される
   def blog_params # ストロングパラメーター
  	  params.require(:blog).permit(:title, :body, :author)
  	                              #(データンのカラム)
   end

end

