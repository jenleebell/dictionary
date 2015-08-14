require('rspec')
require('word')
require('definition')

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

  describe('.all') do
    it('initially is empty') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('save') do
    it('adds a word entry to the array of saved word entries') do
      test_word_entry = Word.new('cat')
      test_word_entry.save()
      expect(Word.all()).to(eq([test_word_entry]))
    end
  end

  describe('.clear') do
    it('empties out all of the saved word entries') do
      Word.new('cat').save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#add_definition') do
    it('adds a new definition to a submitted word') do
      test_word_entry = Word.new("cat")
      test_definition_entry = Definition.new("cute and cuddly feline")
      test_word_entry.add_definition(test_definition_entry)
      expect(test_word_entry.definitions()).to(eq([test_definition_entry]))
    end
  end

end
