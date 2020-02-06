class Product < ActiveRecord::Base
    scope :visible, -> { where(visible: true) }
    scope :by_category, ->(category_id) { joins(:categories).where("category_id == ?", category_id) }
    validates :title, :description, :price, presence: true
    has_many :comments
    has_and_belongs_to_many :categories
end