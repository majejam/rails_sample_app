class Comment < ApplicationRecord
    scope :visible, -> { where(visible: true) }
    validates :body, presence: true
    belongs_to :product
end
