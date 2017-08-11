require 'twitter'

def twitter_client
  @twitter_client ||= Twitter::REST::Client.new do |config|
  config.consumer_key        = "GrQ4mzK9c5IPDR7fWxCQspo5L"
  config.consumer_secret     = "ob96AWuYvz974wQrO9uGkbBPmZZYU3TBLnrkvYVJLUFePXpbtL"
  config.access_token        = "880110608892350465-AowGG5jr33KqSg6pSZZmk4A3zbUyHr4"
  config.access_token_secret = "4JIwHynFtyajc16JmY3alRLhdHPm4G5ipozEdXiMXRWjq"
  end
end


  handles = ["RavishKumarNDTV ‏" ,  "BDUTT" , "Shehla_Rashid" ,"ShashiTharoor" , "sagarikaghose" , "RanaAyyub" , "OfficeOfRG" ,"IYC" ,"PrannoyRoyNDTV" ,"MamataOfficial" , "laluprasadrjd" ,"SalmanNizami_" ,"rssurjewala" ,"JM_Scindia" , "ashokgehlot51"]
  tweet_list = []
  total_no_of_tweets = 0
  allready_retweeted = 0
  handles.each do |handle_name|
  tweet = twitter_client.user_timeline(handle_name)

  if tweet_list.any?

  tweet_list = tweet_list.zip(tweet).flatten.compact


  else
    tweet.each do|tweet|  
       tweet_list << tweet 

  end 
  end 
  end

  tweet_list.each do |tweet| 


  begin

  if !tweet.retweeted? &&  tweet.retweet_count > 10
  twitter_client.retweet tweet
  total_no_of_tweets = total_no_of_tweets +1
  puts "one tweet posted putting thread to sleep for 2 mins " + total_no_of_tweets.to_s + " Total no of posts: " + tweet_list.count.to_s
  sleep 120
  else 

    allready_retweeted = allready_retweeted +1
  puts "Tweet has already been retweeted " + allready_retweeted.to_s + " Total no of posts: " + tweet_list.count.to_s

  end 
  rescue Exception => e
  	
    puts e 
    next 
  end

  end 




#for retwetting tweetss
# twitter_client.retweet tweet
# twitter_client.user_timeline("sagarikaghose").map(&:attrs)[0]



# twitter_client.retweet  twitter_client.user_timeline("sagarikaghose")[0] 

# tweet  = twitter_client.user_timeline("sagarikaghose").map(&:attrs)[0]



#getting data from tweets
# :text for tweet text 

# :description

