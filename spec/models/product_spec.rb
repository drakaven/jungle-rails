require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Validations' do
    before(:all) do
      @category = Category.new(name:'test')
      @product = Product.new(name: "Jenkins", price: 10, quantity: 10, category: @category)
    end

    it "needs to have a name" do
      expect(@product.name).to eq("Jenkins")
    end

    it "needs to have a price" do
      expect(@product.price).to eq(10)
    end

    it "needs to have a quantity" do
      expect(@product.quantity).to eq(10)
    end

    it "needs to have a category" do
      expect(@product.category.name).to_not be_nil
    end


  end
end
