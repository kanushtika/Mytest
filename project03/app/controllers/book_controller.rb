class BookController < ApplicationController
  def index
    @books = Book.all
    render json: @books
  end

  def create_book
    @book = Book.new(:title => params['title'],
                     :description=> params['description'],
                     :author => params['author'])
    if @book.save
      render json: @book
    end
  end
end
