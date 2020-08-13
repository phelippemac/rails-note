class Customer < ApplicationRecord
  has_many :contacts
  max_paginates_per 10

  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
end
