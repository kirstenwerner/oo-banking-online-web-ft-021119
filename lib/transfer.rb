class Transfer
  
  attr_accessor :sender, :reciever, :transfer_amount
  
  def initialize(sender, reciever, transfer_amount = 0)
    @sender = sender
    @reciever = reciever
    @status = 'pending' 
  end 
    
  
end
