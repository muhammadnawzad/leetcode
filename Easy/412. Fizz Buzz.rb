# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  answer = []
  (1..n).each { |i|
    if i % 3 == 0 && i % 5 == 0
      answer.push("FizzBuzz")
    elsif i % 3 == 0
      answer.push("Fizz")
    elsif i % 5 == 0
      answer.push("Buzz")
    else
      answer.push(i.to_s)
    end
  }

  answer
end
