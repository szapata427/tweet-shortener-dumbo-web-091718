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
  dictionary.keys.each do |short|
    array.map! do |word| 
      word.downcase == short ? dictionary[short] : word
    end
  end
  array.join(" ")
end
  
def bulk_tweet_shortener(tweets)
    tweets.each do |word|
      puts word_substituter(word)
    end
  end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
    else
    tweet
    end
  end
  
  def shortened_tweet_truncator(tweet)
    short = word_substituter(tweet)
    if short.length > 140
      short[0...140]
    else 
      tweet
    end
  end
  
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
  