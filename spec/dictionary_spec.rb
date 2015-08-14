require('rspec')
require('word')

describe(Word) do

  describe('submitted_word') do
    it('returns submitted word') do
      test_submitted_word = Word.new('cat')
      expect(test_submitted_word()).to(eq('cat'))
    end
  end

end
