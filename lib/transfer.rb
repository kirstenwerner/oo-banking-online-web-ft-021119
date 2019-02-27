require 'pry'
class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount = 0)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending' 
  end 
  
  def valid?
    sender.valid? == true && receiver.valid? == true 
  end 
  # binding.pry
  def execute_transaction
    if self.valid? && sender.balance > @amount
      receiver.deposit(@amount) 
      sender.deposit(@amount*-1)
      @status = 'complete'
    else 
      @status = 'rejected'
      "Transaction rejected. Please check your account balance."
    end 
  end
    
  
end
