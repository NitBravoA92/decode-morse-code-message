# Decode a character
def decode_char(character)
  morse_alphabet = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }
  morse_alphabet[character]
end

# Decode the character A
character = decode_char('.-')
puts character

# Decode a word
def decode_word(word)
  word.split.map { |character| decode_char(character) }.join
end

# Argument sent HELLO
word = decode_word('.... . .-.. .-.. ---')
puts word

# Decode a whole sentence
def decode_sentence(sentence)
  sentence.split('   ').map { |word| decode_word(word) }.join(' ')
end

# Argument sent HELLO WORLD
sentence = decode_sentence('.... . .-.. .-.. ---   .-- --- .-. .-.. -..')
puts sentence
