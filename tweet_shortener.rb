# Write your code here.
def dictionary
   dictionary = {"hello" => "hi","to" => "2", "two" => "2", "too" => "2","for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@","and" => "&"
}
end

def word_substituter(tweet_one)
 
  array = tweet_one.split(/ /)
  array.each do |tweet|
    dictionary.each do |word, replace|
    if tweet.include? word
      tweet = replace
    end
  end
  end
  array.join(' ')
end

