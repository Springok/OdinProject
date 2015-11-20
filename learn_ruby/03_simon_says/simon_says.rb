def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, num=2)
    i = 1
    @repeat = string
  while i < num
    @repeat = @repeat + " " + string
    i +=1
  end
    return @repeat
end

def start_of_word(string,num)
  string[0..num-1]

end

def first_word(string)
  string.split(' ')[0]

end

def titleize(string)

  # str = string.split(' ')

  # @titleize = str[0].capitalize
  # i=1
  # while i < str.size
  #   @titleize = @titleize + " " + str[i].capitalize
  #   i +=1
  # end
  # return @titleize

  little_words = ["a", "an", "the", "at", "by", "for", "in", "of", "on","over", "to", "up", "and", "as", "but", "it", "or", "and", "nor"]

  words = string.split

  words.each do |word|
      if little_words.include? word
        word
      else
        word.capitalize!
      end
  end
    words[0] = words[0].capitalize
    words.join(' ')

end
