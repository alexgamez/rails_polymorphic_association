class Book < ApplicationRecord
  validates_length_of :title, minimum: 3, maximum: 25
  validates_uniqueness_of :title
  validates :title, presence: true
  validates :author, presence: true
  validates :genre, presence: true

  has_many :notes, as: :noteable, dependent: :destroy

  accepts_nested_attributes_for :notes, reject_if: proc { |attrs|
    attrs['content'].blank?
  }
end
