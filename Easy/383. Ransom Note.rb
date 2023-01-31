# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  answer = false
  ransom_note.each_char do |char|
    if magazine.include?(char)
      magazine.slice!(magazine.index(char))
    else
      return answer
    end
  end
  answer = true
end
