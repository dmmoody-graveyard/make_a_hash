require('rspec')
require('make_a_hash')

describe(MyHash) do
  describe("#fetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      expect(test_hash.fetch("kitten")).to(eq("cute"))
    end

    it("retrieves the second stored value by its key") do
      test_hash = MyHash.new()
      test_hash.store("frog", "mouse")
      test_hash.store("fish", "tree")
      expect(test_hash.fetch("frog")).to(eq("mouse"))
    end
  end
end
