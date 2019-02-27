class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount = 0)
    @sender = sender
    @receiver = receiver
    @status = 'pending' 
  end 
    
  
end
