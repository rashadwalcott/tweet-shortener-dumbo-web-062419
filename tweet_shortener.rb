# Write your code here.
require "pry"
def dictionary
   hash = {"hello" => "hi","to" => "2", "two" => "2", "too" => "2","for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@","and" => "&"
}
end

def word_substituter(tweet_one)
 
 tweet_one.split.map do |tweet|
   if dictionary.keys.include? (tweet.downcase)
      tweet = dictionary[tweet.downcase]
    else
      tweet
    end
  end.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweets)
   if tweets.length > 140
   word_substituter(tweets)
   else
      tweets
   end
 end

def shortened_tweet_truncator(tweets)
    if tweets.length > 140
      word_substituter(tweets)[0..136] + "..."
    else
  tweets
end
end