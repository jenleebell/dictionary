require('rspec')
require('word')
require('definition')

describe(Definition) do

  describe('definition_entry') do
    it('returns submitted definition') do
      test_definition_entry = Definition.new('cute and cuddly feline')
      expect(test_definition_entry.definition_entry()).to(eq('cute and cuddly feline'))
    end
  end

end
