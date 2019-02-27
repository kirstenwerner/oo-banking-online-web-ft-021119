class Transfer
  
  attr_accessor :sender, :receiver, :transfer_amount
  
  def initialize(sender, reciever, transfer_amount = 0)
    @sender = sender
    @receiver = receiver
    @status = 'pending' 
  end 
    
  
end
