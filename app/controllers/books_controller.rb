class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)


    respond_to do |format|
      if @book.save
        format.html  { redirect_to(books_path,
                      :notice => 'Book was successfully created.') }
        format.json  { render :json => @book,
                      :status => :created, :location => @book }
      end
    end

  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(%i[title author genre])
  end
end
