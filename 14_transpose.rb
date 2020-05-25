# frozen_string_literal: true

# rubocop: disable Metrics/MethodLength
# rubocop: disable Metrics/AbcSize
def transpose(string)
  arr = string.split(//)
  new_arr = ''

  i = 0
  while i < string.length
    if arr[i] == 'n' && arr[i - 1] == 'g'
      arr[i], arr[i - 1] = arr[i - 1], arr[i]
      i -= 2
    end
    i += 1
  end

  arr.each { |n| new_arr += n }
  new_arr
end
# rubocop: enable Metrics/MethodLength
# rubocop: enable Metrics/AbcSize

puts transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

puts transpose('rignadingdiggn!')
# # => ringadingdingg!

puts transpose('gngngnnggnngggnnn')
# # => nnnnnnnnngggggggg
