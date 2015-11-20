class Book
  attr_accessor :title

  def initialize(book_title = "inferno")
    @title = book_title
  end

  def title
    little_words = %w(a the and an in of)

    words = @title.split(" ").map do |word| #藉由一個新的words變數來做比較好

      if little_words.include? word
        word
      else
        word.capitalize
      end

    end
    words[0].capitalize!
    @title = words.join(" ")

  end

end
