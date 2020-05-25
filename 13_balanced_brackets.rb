# frozen_string_literal: true

# rubocop: disable Metrics/MethodLength
def balanced_brackets?(string)
  splitted_string = string.split(//)
  open_brakets = ['[', '{', '(']
  close_brakets = [']', '}', ')']
  braket = []

  splitted_string.each do |char|
    braket.push(char) if open_brakets.include?(char)
    next unless close_brakets.include?(char)

    oposite_char = open_brakets[close_brakets.index(char)]
    pop_char = braket.pop
    return false if pop_char != oposite_char
  end
  return false unless braket.length.zero?

  true
end
# rubocop: enable Metrics/MethodLength

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true
