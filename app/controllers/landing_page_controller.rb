class LandingPageController < ApplicationController

  def index
    #@works = $client.update("@patschreiber Tweeting from the app! Part 2!")
    @tweet_timeline = $client.mentions_timeline
    if @works
      @tweeted = "This should have tweeted"
    end
  end

  #TODO - Complete this
  # We want to have a controller menthod that can be hit via cron in order to process the tweets. 
  # http://stackoverflow.com/questions/285717/a-cron-job-for-rails-best-practices
  # Set up table model to get sender id, tweet, and other information from the tweet. 

  def process_tweets
    tweet_timeline = $client.mentions_timeline
    
    @tweet_timeline.each do |tweet|
      tweet.user.screen_name
      tweet.text
    end

    #get user and information supplied, then reply to the tweeter
    #tweet = $client.update("#{}")
  end
end
