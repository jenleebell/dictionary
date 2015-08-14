class Word
  @@word_entries = []

  define_method(:initialize) do |word_entry|
    @word_entry = word_entry
    @id = @@word_entries.length().+(1)
    @definitions = []
  end

  define_method(:word_entry) do
    @word_entry
  end

  define_method(:id) do
    @id
  end

  define_method(:definitions) do
    @definitions
  end

  define_singleton_method(:all) do
    @@word_entries
  end

  define_method(:save) do
    @@word_entries.push(self)
  end

  define_singleton_method(:clear) do
    @@word_entries = []
  end

  define_method(:add_definition) do |definition_entry|
    @definitions.push(definition_entry)
  end

end
