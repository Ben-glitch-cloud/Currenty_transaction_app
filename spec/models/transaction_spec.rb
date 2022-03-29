require 'rails_helper'

RSpec.describe Transaction, type: :model do
  it 'should create a transaction when all values are their' do  
    expect(Transaction.new(customer_id: 04, currency_input: 'USD', amount_input: 100, currency_output: 'EUR', amount_output: 45)).to be_valid 
  end  

  it 'should though an error when all value are not their' do  
    expect(Transaction.new(customer_id: nil, currency_input: 'USD', amount_input: 100, currency_output: 'EUR', amount_output: 45)).to be_invalid
  end 

end
