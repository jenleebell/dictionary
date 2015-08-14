class Definition
  @@definition_entries = []

  define_method(:initialize) do |description|
    @description = description
  end

  define_method(:description) do
    @description
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
