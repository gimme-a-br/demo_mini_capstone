class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 2..1000 }

  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  has_many :images
  # def images
  #   Image.where(product_id: id)
  # end

  has_many :orders

  scope :title_search, ->(search_terms) { where("name ILIKE ?", "%#{search_terms}%") if search_terms }
  scope :discounted, ->(check_discount) { where("price < ?", 10) if check_discount }
  scope :sorted, ->(sort, sort_order) {
          if sort == "price" && sort_order == "asc"
            order(price: :asc)
          elsif sort == "price" && sort_order == "desc"
            order(price: :desc)
          else
            order(id: :asc)
          end
        }

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
