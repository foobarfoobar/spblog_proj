class BookmarksController < ApplicationController
  
  def index
    @bookmarks = Bookmark.all
  end
  
  def edit
    @bookmark = Bookmark.find(params[:id])
  end
  
  def update
    @bookmark = Bookmark.find(params[:id])
    
    if @bookmark.update_attributes(bookmark_params)
      redirect_to bookmarks_path
    else
      render "edit"
    end
  end
  
  def new
    @bookmark = Bookmark.new
  end
  
  def create
    @bookmark = Bookmark.new(bookmark_params) #Form-felder heißen so wie die Spalten in der db, deswegen koennen
          #die Params, die das Form. an die Action uebergibt, als Hash uebergeben werden;
          #params[:ObjektnameDesUebergebenenObjekts]
    if @bookmark.save
      redirect_to bookmarks_path
    else
      render "new"
    end
  end
  
  def show
    @bookmark = Bookmark.find(params[:id])
  end
  
  private
  #Rails 4: the needed parameters must be marked as required
  # Using a private method to encapsulate the permissible parameters
  # is just a good pattern since you'll be able to reuse the same
  # permit list between create and update. Also, you can specialize
  # this method with per-user checking of permissible attributes.
  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :comment)
  end
  
end
