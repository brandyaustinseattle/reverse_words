require 'pry'

# A method to reverse each word in a sentence, in place.

def reverse_words(my_words)

  return nil if my_words.nil?

  word_start = 0
  word_end = 0

  until word_start >= my_words.length

    until my_words[word_end].nil? || my_words[word_end] == " "
      word_end += 1
    end

    ((word_end - word_start) / 2).times do |num|

      letter = my_words[word_start + num]
      my_words[word_start + num] = my_words[word_end - num - 1]
      my_words[word_end - num - 1] = letter

    end

    word_end += 1
    word_start = word_end

  end

end


# # string reverse
# def string_reverse(my_string)
#
#   (count / 2).times do |num|
#     value = -count
#
#     letter = my_string[value]
#     my_string[value] = my_string[num]
#     my_string[num] = letter
#
#   end
# end
#
# # reverse words
# def reverse_words(my_words)
#
#   return nil if my_words.nil?
#
#   start = 0
#   index = 0
#
#   until start >= my_words.length
#
#     until my_words[index].nil? || my_words[index] == " "
#       index += 1
#     end
#
#     ((index - start) / 2).times do |num|
#       letter = my_words[start + num]
#       my_words[start + num] = my_words[index - num - 1]
#       my_words[index - num - 1] = letter
#     end
#
#     index += 1
#     start = index
#
#   end
#
# end
