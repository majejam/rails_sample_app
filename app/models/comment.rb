class Comment < ApplicationRecord
    scope :visible, -> { where(visible: true) }
    validates :body, presence: true
    belongs_to :product
    belongs_to :user, counter_cache: true
end
