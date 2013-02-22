class Snippet < ActiveRecord::Base
  attr_accessible :post, :post_date
  validates :post, :post_date, :presence => true
end
