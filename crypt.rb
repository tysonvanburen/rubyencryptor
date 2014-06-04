class Encryptor
  def cipher
{'a' => 'n', 'b' => 'o', 'c' => 'P', 'd' => 'q', 'e' => 'r',
'f' => 's', 'g' => 't', 'h' => 'u', 'i' => 'v', 'f' => 'w',
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
