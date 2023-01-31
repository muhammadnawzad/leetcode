# @param {String} s
# @return {Integer}
def roman_to_int(s)

  value = 0
  letter_values = {
      "I" => 1,
      "V" => 5,
      "X" => 10,
      "L" => 50,
      "C" => 100,
      "D" => 500,
      "M" => 1000
    }

  (0..(s.length - 1)).each { |index|
    if s[index] == "I" && (s[index + 1] == "V" || s[index + 1] == "X")
      value -= letter_values['I']
    elsif s[index] == "X" && (s[index + 1] == "L" || s[index + 1] == "C")
      value -= letter_values['X']
    elsif s[index] == "C" && (s[index + 1] == "D" || s[index + 1] == "M")
      value -= letter_values['C']
    else
      value += letter_values[s[index]]
    end
  }

  value
end
