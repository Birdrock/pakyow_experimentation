Pakyow::App.routes do
  # define your routes here

  # see something working by uncommenting the line below
  # default do
  #   puts 'hello'
  # end
  restful :tweet, '/' do
	  list do
	  	tweets = client.search("#ios", result_type: "recent").take(10).to_a
	  	view.scope(:tweet).apply(tweets)
	  	tweets2 = client.search("#android", result_type: "recent").take(10).to_a
	  	view.scope(:tweet2).apply(tweets2)
	  end

	  show do
	  	tweet = client.status(params[:tweet_id])
			view.scope(:tweet).apply(tweet)
	  end
	end
end
