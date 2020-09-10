class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 2..500 }
  validates_format_of :image_url, :with => %r{\.(png|jpg|jpeg)$}i, :message => "must have a valid filetype", multiline: true

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
