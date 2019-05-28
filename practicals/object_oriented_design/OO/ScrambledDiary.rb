class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end

  def scramble_by_advancing_chars(steps)
    plain_chars = @contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + steps).chr
    end
    @contents = scrambled_chars.join
  end

  def unscramble_by_advancing_chars(steps)
    scrambled_chars = @contents.chars
    plain_chars = scrambled_chars.map do |char|
      (char.ord - steps).chr
    end
    @contents = plain_chars.join
  end

  def scramble_by_reversing
    @contents = @contents.reverse
  end

  def unscramble_by_reversing
    @contents = @contents.reverse
  end
end
----------------------------------

* read   * scramble_by_advancing_chars          *scramble_by_reversing
         * unscramble_by_advancing_chars        *unscramble_by_reversing

ScrambledDiary.new(contents).scramble(By_advancing_charts.new(steps))
ScrambledDiary.new(contents).scramble(By_reversing.new)
ScrambledDiary.new(contents).unscramble(By_undo_advancing_charts.new(steps))
ScrambledDiary.new(contents).unscramble(By_undo_reversing.new)


----------------------------------

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

class By_Undo_reversing
  def excuate(contents)
    contents.reverse
  end
end
