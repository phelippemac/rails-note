class Contact < ApplicationRecord
  belongs_to :customer
  max_paginates_per 10

  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
end
