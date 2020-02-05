class Product < ActiveRecord::Base
    scope :visible, -> { where(visible: true) }
    validates :title, :description, :price, presence: true
    has_many :comments
end