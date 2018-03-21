require 'pry'

# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)

  return nil if my_words.nil?

  start = 0
  index = 0

  until start >= my_words.length

    until my_words[index].nil? || my_words[index] == " "
      index += 1
    end

    ((index - start) / 2).times do |num|
      letter = my_words[start + num]
      my_words[start + num] = my_words[index - num - 1]
      my_words[index - num - 1] = letter
    end

    index += 1
    start = index

  end

end
