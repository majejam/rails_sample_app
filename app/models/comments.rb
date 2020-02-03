class Product < ActiveRecord::Base
    validates :text, presence: true
    belongs_to :products
end