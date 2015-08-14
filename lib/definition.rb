class Definition
  @@definition_entries = []

  define_method(:initialize) do |definition_entry|
    @definition_entry = definition_entry
  end

  define_method(:definition_entry) do
    @definition_entry
  end

  define_singleton_method(:all) do
    @@definition_entries
  end

  define_method(:save) do
    @@definition_entries.push(self)
  end

  define_singleton_method(:clear) do
    @@definition_entries = []
  end

end
