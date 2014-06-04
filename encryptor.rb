class Encryptor
  def cipher
{'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q', 'e' => 'r',
'f' => 's', 'g' => 't', 'h' => 'u', 'i' => 'v', 'j' => 'w',
'k' => 'x', 'l' => 'y', 'm' => 'z', 'n' => 'a', 'o' => 'b',
'p' => 'c', 'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k', 'y' => 'l',
'z' => 'm'}
  end

  def encrypt(letter)
    cipher[letter.downcase]
  end

  def encrypt_word(string)
    letters = string.split('')
    results = []
    letters.each do |letter|
      encrypted_letter = encrypt(letter)
      results << encrypted_letter
    end
    results.join
  end
  def encrypt_file(filename)
    input = File.open(filename, 'r')
    contents = input.read
    encrypted_contents = encrypt_word(contents)
    input.close

      output = File.open(filename + '.encrypted', 'w')
      output.write(encrypted_contents)
      output.close
  end

end
