class Product < ApplicationRecord
  def friendly_updated_at
    updated_at.strftime("%B%e, %Y")
  end

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
