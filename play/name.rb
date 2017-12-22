class Name
  require "./word_stuff"

  def initialize(first_name, middle_name, last_name, maiden_name=nil)
    @first_name = first_name
    @last_name = last_name
    @middle_name = middle_name
    @maiden_name = if maiden_name.nil?
      last_name
    else
      maiden_name
    end
  end

  # Public: Returns the first name of this name.
  def first
    return @first_name
  end

  # Public: Returns the last name of this name.
  def last
    return @last_name
  end

  def middle
    return @middle_name
  end

  def maiden
    return @maiden_name
  end

  # Public: Return the full name.  If there's a maiden name that's different
  # the last name, append that as well.
  def full_name
    full_name = "#{first} #{middle} #{last}"
    if maiden != last
      full_name += " nee #{maiden}"
    end
    return full_name
  end

  def size
    return full_name.size
  end

  def word_count
    return WordStuff.word_count(full_name)
  end

end
