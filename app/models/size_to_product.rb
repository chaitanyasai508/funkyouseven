class SizeToProduct < ActiveRecord::Base
  attr_accessible :product_id, :size_id

  belonds_to :product

end