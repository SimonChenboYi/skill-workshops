require 'letter_getter'

describe LetterGetter do
  context 'when the word length is odd' do
    describe '#get_middle' do
      it 'return the middle letter when the word length is odd = example1 ' do
        expect(subject.get_middle('Hello')).to eq 'l'
      end

      it 'return the middle letter when the word length is odd - example2 ' do
        expect(subject.get_middle('world')).to eq 'r'
      end
    end
  end

  context 'when the word length is enven' do
    describe '#get_middle' do
      it ' return a string containing the two letters in the middle - example 1' do
        expect(subject.get_middle('middle')).to eq 'dd'
      end

      it 'return a string containing the twl letters in the middile - example 2' do
        expect(subject.get_middle('expect')).to eq 'pe'
      end
    end
  end
end
