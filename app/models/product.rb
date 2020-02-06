class Product < ActiveRecord::Base
    scope :visible, -> { where(visible: true) }
    validates :title, :description, :price, presence: true
    has_many :comments
    has_and_belongs_to_many :categories
end