class Product < ApplicationRecord
    belongs_to :category

    # default_scope { where.not(price: nil) }

    default_scope { order(id: :desc) }

    scope :recent, lambda { where(["created_at >= ?", 1.year.ago]) }

    # callback
    after_save :ammounce_save
    delegate :prefix, to: :category, allow_nil: true

    def full_ref_num
        "#{prefix}-#{ref_num}"
    end

    private
        def ammounce_save
            puts '***** SAVE!! *****'
        end
end
