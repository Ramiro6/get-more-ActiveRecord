class Product < ApplicationRecord
    belongs_to :category

    # default_scope { where.not(price: nil) }

    default_scope { order(id: :desc) }

    scope :recent, lambda { where(["created_at >= ?", 1.year.ago]) }

    # this is in another commid no in this
    # delegate :prefix, to: :category

    # def full_ref_num
    #     "#{prefix}-#{ref_num}"
    # end
end
