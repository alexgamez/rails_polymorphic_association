# frozen_string_literal: true

# Books controller
class NotesController < ApplicationController
  def index
    @notes = Note.all.paginate(page: params[:page], per_page: 25)
  end
end
