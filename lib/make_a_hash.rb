class MyHash
  define_method(:initialize) do
    @my_hash = {}
  end

  define_method(:store) do |key, value|
    @my_hash.merge!({key => value})
  end

  define_method(:fetch) do |key|
    @my_hash[key]
  end
end
