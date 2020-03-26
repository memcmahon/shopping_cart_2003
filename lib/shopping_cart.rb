class ShoppingCart
  attr_reader :name,
              :capacity,
              :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def total_number_of_products
    total = 0
    @products.each do |product|
      total += product.quantity
    end
    total
  end

  def is_full?
    total_number_of_products > @capacity
    # if total_number_of_products > @capacity
    #   true
    # else
    #   false
    # end
  end

  def products_by_category(category)
    found_products = []
    @products.each do |product|
      if product.category == category
        found_products << product
      end
    end
    found_products
    # could refactor to use #find_all
  end

  def details
    # { :name => @name, :capacity => @capacity }
    { name: @name, capacity: @capacity }
  end
end
