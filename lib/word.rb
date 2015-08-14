class Word

  define_method(:initialize) do |submitted_word|
    @submitted_word = submitted_word
  end

  define_method(:submitted_word) do
    @submitted_word
  end
end
