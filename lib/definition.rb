class Definition
  @@definition_entries = []

  define_method(:initialize) do |definition_entry|
    @definition_entry = definition_entry
  end

  define_method(:definition_entry) do
    @definition_entry
  end

end
