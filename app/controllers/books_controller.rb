# frozen_string_literal: true

# Books controller
class BooksController < ApplicationController
  include NotesHelper
  before_action :set_book, only: [:edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html do
          redirect_to(books_path, notice: 'Book was successfully created.')
        end
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit; end

  def update
    @book.assign_attributes(book_params)

    respond_to do |format|
      if @book.save
        format.html do
          redirect_to(books_path,
                      notice: 'Book was successfully updated.')
        end
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @book.destroy

    respond_to do |format|
      format.html do
        redirect_to(books_path, notice: 'Book was successfully destroyed.')
      end
    end
  end

  private

  def book_params
    params.require(:book).permit([:title, :author, :genre, notes_attributes])
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
