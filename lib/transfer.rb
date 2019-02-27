class Transfer
  
  attr_accessor :sender, :receiver, :amount
  
  def initialize(amount = 0)
    @sender = sender
    @receiver = receiver
    @status = 'pending' 
  end 
    
  
end
