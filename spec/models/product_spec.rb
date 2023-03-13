require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    before do
      @category = Category.create(name: "Plants")
    end

    it "should save successfully with all four fields input" do
      @product = Product.new(
        name: "Money Tree",
        price_cents: 1499,
        quantity: 50,
        category: @category
      )
      
      expect(@product).to be_valid
    end

    it "shouldn't save when name is nil" do
      @product = Product.new(
        name: nil,
        price_cents: 1499,
        quantity: 50,
        category: @category
      )

      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end

    it "shouldn't save when price is nil" do
      @product = Product.new(
        name: "Money Tree",
        price_cents: nil,
        quantity: 50,
        category: @category
      )

      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Price can't be blank")
    end

    it "shouldn't save when quantity is nil" do
      @product = Product.new(
        name: "Money Tree",
        price_cents: 1499,
        quantity: nil,
        category: @category
      )

      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end

    it "shouldn't save when category is nil" do
      @product = Product.new(
        name: "Money Tree",
        price_cents: 1499,
        quantity: 50,
        category: nil
      )

      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Category can't be blank")
    end
    
  end
end
