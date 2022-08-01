class BooksController < ApplicationController

  def new
    @book=Book.new
  end

  def index
    @books=Book.all
    @book=Book.new
  end

  def create
    book =Book.new(books_params)
    book.save
    redirect_to book_path(book.id)

  end

  def show
    @book=Book.find(params[:id])
  end

  def edit
    
  end

  def update
  end

  def destroy
  end

  private
  def books_params
    params.require(:book).permit(:title,:body)
  end
end
