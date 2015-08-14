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

  describe('.all') do
    it('initially is empty') do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('save') do
    it('adds a definition entry to the array of saved definition entries') do
      test_definition_entry = Definition.new('cute and cuddly feline')
      test_definition_entry.save()
      expect(Definition.all()).to(eq([test_definition_entry]))
    end
  end

  describe('.clear') do
    it('empties out all of the saved definitions') do
      Definition.new('cute and cuddly feline').save()
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end

end
