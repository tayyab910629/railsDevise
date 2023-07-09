class TransactionController < ApplicationController
  def trx
    @transaction = current_user.transactions
    # @transaction=Transaction.all
    
    
  end

 def savedtrx
 @trx=Transaction.create(data)

 if @trx.save
  @transaction=current_user.transactions
  redirect_to transaction_path, notice: "Transaction was successfully Added."
 

   
  
 end
end

def destroy
  @transaction = Transaction.find(params[:id])
  @transaction.destroy
   redirect_to transaction_path, alert: "Transaction was successfully deleted."
  
end




  
private

  def data
  
{
      
 amount: params[:amount],merchant_name: params[:merchant_name],
category: params[:category], user_id: current_user.id
   
   


   }

   end





end
