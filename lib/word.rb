class Word
  @@word_entries = []

  define_method(:initialize) do |word_entry|
    @word_entry = word_entry
    @id = @@word_entries.length().+(1)
  end

  define_method(:word_entry) do
    @word_entry
  end

  define_method(:id) do
    @id
  end
end
