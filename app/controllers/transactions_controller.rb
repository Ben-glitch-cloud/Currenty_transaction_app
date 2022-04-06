class TransactionsController < ApplicationController
  def index
  end 

  def showAll 
    @transactions = Transaction.all
  end  

  def show  
    @transaction = Transaction.find(params[:id])   
  end  

  def new  
    @transaction = Transaction.new
  end   

  def create   
    @transaction = Transaction.new(transaction_params)  
    puts @transaction
    if @transaction.save
      redirect_to '/transactions/showAll' 
    else
      render :new, status: :unprocessable_entity
    end
  end  

  def edit 
    @transaction = Transaction.find(params[:id])
  end  

  def update  
    @transaction = Transaction.find(params[:id])

    if @transaction.update(transaction_params)
      redirect_to '/transactions/showAll'
    else
      render :edit, status: :unprocessable_entity
    end
  end 

end 


def transaction_params
  params.require(:transaction).permit(:customer_id, :currency_input, :amount_input, :currency_output, :amount_output)
end
