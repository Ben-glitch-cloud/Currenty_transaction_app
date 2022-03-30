require 'rails_helper'

RSpec.describe Transaction, type: :model do  
  it 'should create a transaction when all values are their' do  
    expect(Transaction.new(customer_id: 04, currency_input: 'USD', amount_input: 100, currency_output: 'EUR', amount_output: 45)).to be_valid 
  end   

  it 'should throw an error if customer id is not a number' do  
    expect(Transaction.new(customer_id: 'HTG', currency_input: 'USD', amount_input: 100, currency_output: 'EUR', amount_output: 45)).to be_invalid
  end 

  it 'should throw an error when all value are not their' do  
    expect(Transaction.new(customer_id: nil, currency_input: 'USD', amount_input: 100, currency_output: 'EUR', amount_output: 45)).to be_invalid
  end  

  it 'should throw an error if amount input is 0' do  
    expect(Transaction.new(customer_id: nil, currency_input: 'USD', amount_input: 0, currency_output: 'EUR', amount_output: 45)).to be_invalid
  end  

  it 'should throw an error if amount output is 0' do  
    expect(Transaction.new(customer_id: 01, currency_input: 'USD', amount_input: 10, currency_output: 'EUR', amount_output: 0)).to be_invalid
  end   

  it 'should throw an error if amount input is a string' do  
    expect(Transaction.new(customer_id: 01, currency_input: 'USD', amount_input: 'NULL', currency_output: 'EUR', amount_output: 0)).to be_invalid
  end   

  it 'should throw an error if amount output is a string' do  
    expect(Transaction.new(customer_id: 01, currency_input: 'USD', amount_input: 10, currency_output: 'EUR', amount_output: 'NULL')).to be_invalid
  end  

end
