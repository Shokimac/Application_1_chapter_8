class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = book.find(params[:id])
    
  end


end
