class Word
  @@word_entries = []

  define_method(:initialize) do |name|
    @name = name
    @id = @@word_entries.length().+(1)
    @definitions = []
  end

  define_method(:name) do
    @name
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

  define_singleton_method(:find) do |id|
    found_word = nil
    @@word_entries.each() do |word|
      if word.id().eql?(id)
        found_word = word
      end
    end
    found_word
  end
  # fixed indentation above

end
