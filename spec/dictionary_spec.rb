require('rspec')
require('word')

describe(Word) do

  describe('#word_entry') do
    it('returns submitted word') do
      test_word_entry = Word.new('cat')
      expect(test_word_entry.word_entry()).to(eq('cat'))
    end
  end

  describe('#id') do
    it('returns the id of the submitted word') do
      test_word_entry = Word.new('cat')
      expect(test_word_entry.id()).to(eq(1))
    end
  end
end
