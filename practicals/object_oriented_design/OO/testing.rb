class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end

  def scramble(scrambling_approach)
    @contents = scrambling_approach.excuate(@contents)
  end

  def unscramble(unscrambling_approach)
    @contents = unscrambling_approach.excuate(@contents)
  end
end

class By_advancing_charts
  def initialize(steps)
    @steps = steps
  end

  def excuate(contents)
    plain_chars = contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + @steps).chr
    end
    scrambled_chars.join
  end
end

class By_reversing
  def excuate(contents)
    contents.reverse
  end
end

class By_undo_advancing_charts
  def initialize(steps)
    @steps = steps
  end

  def excuate(contents)
    scrambled_chars = contents.chars
    plain_chars = scrambled_chars.map do |char|
      (char.ord - @steps).chr
    end
    plain_chars.join
  end
end

class By_undo_reversing
  def excuate(contents)
    contents.reverse
  end
end


p ScrambledDiary.new("hello").read

 p ScrambledDiary.new("hello").scramble(By_advancing_charts.new(2))
 p ScrambledDiary.new("jgnnq").unscramble(By_undo_advancing_charts.new(2))
 p ScrambledDiary.new("hello").scramble(By_reversing.new)
p ScrambledDiary.new("olleh").unscramble(By_undo_reversing.new)
