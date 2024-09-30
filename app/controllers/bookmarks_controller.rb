class BookmarksController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new
  end

  def create
    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.category = @category
    if @bookmark.save
      redirect_to bookmark_path(@bookmark)
    else
      render :new, status: :unprocessable_entity
    end

    def destroy
      raise
      @bookmark = Bookmark.find(params[:id])
      @bookmark.destroy
      redirect_to category_path(@bookmark.category), status: :see_other
    end
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:comment, :recipe_id)
  end
end
