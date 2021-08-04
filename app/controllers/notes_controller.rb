# frozen_string_literal: true

# Books controller
class NotesController < ApplicationController
  def index
    @notes = Note.all
  end
end