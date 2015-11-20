
def translate(string)

 string.split(" ").map { |w| translateone(w) }.join(" ")

end


def translateone(word)

  vowel = %w(a i u e o)

    if vowel.include?(word[0])
      return word + "ay"
    elsif !vowel.include?(word[0]) && !vowel.include?(word[1]) && !vowel.include?(word[2]) || !vowel.include?(word[0]) && word[1..2] =="qu"
      return word[3..-1] + word[0..2] + "ay"
    elsif !vowel.include?(word[0]) && !vowel.include?(word[1])  || word[0..1] == "qu"
      return word[2..-1] + word[0..1] + "ay"
    else
      return word[1..-1] + word[0] +"ay"
    end

end
