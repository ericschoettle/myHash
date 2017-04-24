require ('pry')
class MyHash
  define_method(:initialize) do |keysArray = [], valuesArray = []|
    @keys = keysArray
    @values = valuesArray

    # self.makeHash(string)
  end
  # define_method(:makeHash) do |string|
  #   pairsArray = string.split(",")
  #   pairsArray.each() do |pair|
  #     pair
  #     @keys.push()
  #   end
  # end
  define_method(:myStore) do |key, value|
    @keys.push(key)
    @values.push(value)
  end
  define_method(:myFetch) do |key|
    idx = @keys.index(key)
    @values[idx]
  end
  define_method(:myHasKey?) do |key|
    @keys.include?(key)
  end
  define_method(:myHasValue?) do |value|
    @values.include?(value)
  end
  define_method(:myLength) do
    @keys.length()
  end
  define_method(:myMerge) do |hash|
    hash.myKeys.each() do |key|
      if self.myHasKey?(key)
        self.myRemove(key)
      end
    end
    @keys = @keys + hash.myKeys()
    @values = @values + hash.myValues()
  end
  define_method(:myRemove) do |key|
    idx = @keys.index(key)
    @keys.delete_at(idx)
    @values.delete_at(idx)
  end
  define_method(:myKeys) do
    @keys
  end
  define_method(:myValues) do
    @values
  end
  define_method(:myDisplay) do
    string = "{"
    @keys.each_with_index() do |key, index|
      string = string + @keys[index] + " => " + @values[index] + ", "
    end
    string = string [0...-2] + "}"
  end
end
