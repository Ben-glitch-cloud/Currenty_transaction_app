class Transaction < ApplicationRecord 
    validates :customer_id, presence: true 
    validates :currency_input, presence: true
    validates :amount_input, presence: true
    validates :currency_output, presence: true
    validates :amount_output, presence: true
end
