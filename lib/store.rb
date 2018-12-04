class Store < ActiveRecord::Base

    has_many :employees

    validates :name, length: { minimum: 3 }
    validates :annual_revenue, numericality: {
        only_integer: true,
        greater_than_or_equal_to: 0
    }
    validate :must_carry_one_clothing_line

    def must_carry_one_clothing_line
        errors.add(:base, "store must carry gendered apparel") if (!self.mens_apparel && !self.womens_apparel)
    end

end
