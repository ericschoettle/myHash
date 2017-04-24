require('rspec')
require('./lib/triangle')

describe(Triangle) do
  describe('type') do
    it "tests if three sides are a triangle" do
      test_triange = Triangle.new(2,17,4)
      expect(test_triange.type()).to(eq("Not a triangle"))
    end
    it "tests if three sides are equal" do
      test_triange = Triangle.new(3,3,3)
      expect(test_triange.type()).to(eq("Equilateral"))
    end
    it "tests if two sides are equal" do
      test_triange = Triangle.new(1,12,12)
      expect(test_triange.type()).to(eq("Isosceles"))
    end
    it "tests if three sides are not equal" do
      test_triange = Triangle.new(3,4,5)
      expect(test_triange.type()).to(eq("Scalene"))
    end
  end
end
