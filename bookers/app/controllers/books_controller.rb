class BooksController < ApplicationController
end

def index
  @books = Book.all
end 

def new
end

def show
end 

def edit
end

def create
  book = Book.new(book_params)
  book.save
  redirect_to "/"
end

private

def book_params
  params.require(:book).permit(:title, :body)
end