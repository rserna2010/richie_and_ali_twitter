cursor = -1


while cursor != 0 do 

  @list_members = Twitter.list_members('cspan', 'Senators', :cursor => cursor)
  @list_members.users.each do |senator|

    TwitterUser = Twitter.user(senator.screen_name)
    Tweets = Twitter.user_timeline(senator.screen_name, count: 10000)


    politician_example =  Politician.create(name: TwitterUser.name, 
      state: TwitterUser.location, 
      total_followers: TwitterUser.followers_count,
      total_tweets: TwitterUser.statuses_count,
      handle: TwitterUser.screen_name, 
      avatar: TwitterUser.profile_image_url(size=:original))


    Tweets.each do |tweet|
      Tweet.create(text: tweet.text, date_tweeted: tweet.created_at, 
        tweet_id: tweet.id, politician_id: politician_example.id)

  
    end
  end

 
   cursor = @list_members.next_cursor

 end 


 
 