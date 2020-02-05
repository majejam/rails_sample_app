class Comment < ApplicationRecord
    validates :body, presence: true
    self.per_page = 10
    belongs_to :product
end
