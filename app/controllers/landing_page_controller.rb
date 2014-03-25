class LandingPageController < ApplicationController

  def index
    #@works = $client.update("@patschreiber Tweeting from the app! Part 2!")
    if @works
      @tweeted = "This should have tweeted"
    end
  end
end
