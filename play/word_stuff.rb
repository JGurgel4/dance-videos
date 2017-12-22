module WordStuff
  # Public: Counts the number of words in a string.
  #
  # string - a string
  #
  # Returns the number of words in the given string as an int.
  def self.word_count(string)
    words = string.split(/[^\w\-]+/)
    return words.size
  end

  # Public: Counts the number of characters in a string.
  #
  # string - a string
  #
  # Returns the number of character in the given string as an int.
  def self.char_count(string)
    characters = string.split(//)
    return characters.size
  end
end
