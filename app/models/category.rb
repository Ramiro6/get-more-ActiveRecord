class Category < ApplicationRecord
    has_many :products
    before_validation :add_default_prefix, if: 
                      Proc.new { |category| category.prefix.blank? }

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
