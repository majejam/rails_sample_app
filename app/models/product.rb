class Product < ActiveRecord::Base
    validates :title, :description, :price, presence: true
    self.per_page = 10
end