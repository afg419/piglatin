class PigLatin
  def self.translate(word)
    if it_starts_with_a_vowel?(word)
      word + pig_latin_root
    else
      remove_first_letter(word) + pig_latin_ending(word)
    end
  end

  def self.it_starts_with_a_vowel?(word)
    %w{ a e i o u }.include?(word[0])
  end

  def self.pig_latin_ending(word)
    word[0] + pig_latin_root
  end

  def self.pig_latin_root
    "ay"
  end

  def self.remove_first_letter(word)
    word[1..-1]
  end
end

loop do
  word = gets.chomp
  break if word == "exit!"
p PigLatin.translate(word)
end
