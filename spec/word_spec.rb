require('rspec')
require('word')
require('definition')

describe(Word) do
  before() do
    Word.clear()
  end

  describe('#name') do
    it('returns submitted word') do
      test_word_entry = Word.new('cat')
      expect(test_word_entry.name()).to(eq('cat'))
    end
  end

  # describe('.all') do
  #   it('initially is empty') do
  #     expect(Word.all()).to(eq([]))
  #   end
  # end

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

  describe(".find") do
  it("returns a word by its id number") do
    test_word = Word.new({:name => "Cat"})
    test_word.save()
    test_word2 = Word.new({:name => "Dog"})
    test_word2.save()
    expect(Word.find(test_word.id())).to(eq(test_word))
    end
  end
end
