class Sub < ApplicationRecord
  has_many :topics, dependent: :destroy
  #server side validation IN CASE somethings slips past client side validation
  validates :name, presence: true 
end
