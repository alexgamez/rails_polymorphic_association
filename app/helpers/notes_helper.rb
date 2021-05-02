# frozen_string_literal: true

module NotesHelper
    extend ActiveSupport::Concern
  
    def notes_attributes
      { notes_attributes: %i[id noteable_id noteable_type content] }
    end
  end