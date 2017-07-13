def first_anagram?(original, poss_perm)
  return false if original.length != poss_perm.length
  perms = original.split('').permutation.map(&:join)
  perms.include?(poss_perm)
end

def second_anagram?(original, poss_perm)
  return false if original.length != poss_perm.length
  poss_perm_chars = poss_perm.chars
  original_chars = original.dup.chars

  original_chars.each_with_index do |char, idx|
    char_idx = poss_perm_chars.index(char)
    return false unless char_idx

    poss_perm_chars.delete_at(char_idx)
    original_chars.delete_at(idx)
  end

  return original_chars == poss_perm_chars
end

def third_anagram?(original, poss_perm)
  return false if original.length != poss_perm.length
  original.chars.sort.join == poss_perm.chars.sort.join
end

def fourth_anagram?(original, poss_perm)
  return false if original.length != poss_perm.length
  hash = Hash.new(0)

  original.each_char { |char| hash[char] += 1}
  poss_perm.each_char { |char| hash[char] -= 1}

  hash.all? {|k, v| v == 0}
end
