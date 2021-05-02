# frozen_string_literal: true

# notes helper
module NotesHelper
  extend ActiveSupport::Concern

  def notes_attributes
    { notes_attributes: [:id, :noteable_id, :noteable_type, :content] }
  end
end
