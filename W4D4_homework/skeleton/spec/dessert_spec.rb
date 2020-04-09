require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:dessert) {Dessert.new("dessert", 1, chef)}

  describe "#initialize" do
  
    it "sets a type" do
    expect(dessert.instance_variable_get(:@type)).to eq("dessert")
    end

    it "sets a quantity" do
    expect(dessert.instance_variable_get(:@quantity)).to eq(1)
    end

    it "starts ingredients as an empty array" do
    expect(dessert.instance_variable_get(:@ingredients)).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { quantity.to_i }.to raise_error
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("cream")
      expect(dessert.ingredients).to include("cream")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      ingredients = ["cream", "sugar", "egg", "flour"]
      count = Hash.new(0)
      ingredients.each do |ing|
        count[ing]+=1
      end
      count

      mixed = ingredients.shuffle!
      count_mix = Hash.new(0)
      mixed.each do |ing|
        count_mix[ing]+=1
      end
      count_mix

      expect(count == count_mix).to eq(true)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(1)
      expect(dessert.quantity).to eq(0)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{dessert.eat > dessert.quantity}.to raise_error
    end

  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect { "Chef #{@name} the Great Baker has made #{@quantity} #{@type.pluralize}!"}
    end
    
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end
  end
end
