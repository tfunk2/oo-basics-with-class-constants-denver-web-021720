class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    brands
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

    def brands
      result = BRANDS.any? do |shoe_brand|
        brand == shoe_brand
      end
      if !result
        BRANDS << brand
      end
    end

end