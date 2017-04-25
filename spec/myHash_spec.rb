require('rspec')
require('./lib/myHash')

# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)

describe(MyHash) do
  describe("#myFetch") do
    it("retrieves a stored value by key") do
      test_hash = MyHash.new()
      test_hash.myStore("apple", "red")
      expect(test_hash.myFetch("apple")).to(eq("red"))
    end
  end
  describe("#myRemove") do
    it("removes key and value from hash given a key") do
      test_hash = MyHash.new()
      test_hash.myStore("apple", "red")
      test_hash.myStore("mango", "yellow")
      test_hash.myStore("avocado", "green")
      test_hash.myRemove("mango")
      expect(test_hash.myKeys()).to(eq(["apple", "avocado"]))
      expect(test_hash.myValues()).to(eq(["red", "green"]))
    end
    describe("#myMerge") do
      it("merges two hashes") do
        test_hash = MyHash.new()
        test_hash.myStore("apple", "red")
        test_hash.myStore("mango", "yellow")
        test_hash2 = MyHash.new
        test_hash2.myStore("avocado", "green")
        test_hash.myMerge(test_hash2)
        expect(test_hash.myKeys()).to(eq(["apple", "mango", "avocado"]))
        expect(test_hash.myValues()).to(eq(["red", "yellow", "green"]))
      end
    end
    describe("#myDisplay") do
      it("displays hash") do
        test_hash = MyHash.new()
        test_hash.myStore("apple", "red")
        test_hash.myStore("mango", "yellow")
        expect(test_hash.myDisplay()).to(eq('{apple => red, mango => yellow}' ))
      end
    end
    describe("#myDisplay") do
      it("accepts arrays as arguments") do
        test_hash = MyHash.new(["apple", "mango"], ["red", "yellow"])
        expect(test_hash.myDisplay()).to(eq('{apple => red, mango => yellow}' ))
      end
    end
  end
end
