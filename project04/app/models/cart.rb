class Cart < ActiveRecord::Base
	has_many :line_items, :dependent => :destroy
	attr_accessible :cart_id
	def add_product(product_id)
		current_time = line_items.find_by_product_id(product_id)
		if current_time
			current_time.quantity += 1
		else
			current_time = line_items.build(:product_id => product_id)
		end
		current_time
	end
	
	def total_price
		line_items.to_a.sum { |item| item.total_price }
	end
end
