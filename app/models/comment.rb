class Comment < ApplicationRecord
  validates_presence_of :post_id
  belongs_to :post
end