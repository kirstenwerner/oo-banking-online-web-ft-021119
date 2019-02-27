class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount = 0)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending' 
  end 
  
  def valid?(sender, reciever)
    sender.valid? == true && receiver.valid? == true 
  end 
    
  
end
