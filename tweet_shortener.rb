def dictionary
    words_sub = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
    }
end

def word_substituter(tweet)
  array = tweet.split(" ")
  
  dictionry.each do |short|
    array.map! do |word| 
      word == short ? dictionary[short] : word
    end
  end
  array.join(" ")
end
  
  