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
  
  def execute_transaction
        @status = 'complete'
if self.valid? 
      receiver.deposit(@amount) && sender.deposit(@amount*-1)
    else 
      "Transaction rejected. Please check your account balance."
    end 
  end
    
  
end
