class Product < ApplicationRecord

    # default_scope { where.not(price: nil) }

    default_scope { order(id: :desc) }

    scope :recent, lambda { where(["created_at >= ?", 1.year.ago]) }
end
