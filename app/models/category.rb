class Category < ApplicationRecord
    has_many :products, lambda { order(:created_at) },
              dependent: :destroy


    before_validation :add_default_prefix, if: 
                    #   Proc.new { |category| category.prefix.blank? }
                    #   or
                      proc { |category| category.prefix.blank? }

    validates :name, presence: true
    validates :prefix, presence: true


    # def prefix
    #     'GEN'
    # end

    # around_save :benchmark
    private
        def add_default_prefix
            # this 'if' change for if in before_validation
            # if prefix.blank?
                puts '*** ADDING default prefix' 
                self.prefix = 'GEM'
            # end
        end
end
