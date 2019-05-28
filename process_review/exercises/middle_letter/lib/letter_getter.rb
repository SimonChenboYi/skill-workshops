class LetterGetter

  def get_middle(word)
    letters = word.split("")
    return letters[letters.length/2] if word.length.odd?

    letters[letters.length/2 - 1] + letters[letters.length/2] if word.length.even?
  end

end
