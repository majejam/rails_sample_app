class Product < ActiveRecord::Base
    validates :title, :description, :price, presence: true
    self.per_page = 10
    has_many :comments
end