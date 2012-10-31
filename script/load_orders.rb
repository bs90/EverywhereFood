Order.transaction do 
	(1..100).each do |i|
	Order.create(:name => "", :address => "", :email => "", :pay_type => "Check")
	end 
end