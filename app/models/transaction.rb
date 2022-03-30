class Transaction < ApplicationRecord 
    validates :customer_id, presence: true, numericality: { only_integer: true }
    validates :currency_input, presence: true
    validates :amount_input, presence: true, comparison: { greater_than: 0 }, numericality: true
    validates :currency_output, presence: true
    validates :amount_output, presence: true, comparison: { greater_than: 0 }, numericality: true
end
