Pakyow::App.bindings do
  # define bindings here
  scope :tweet do
	  binding :avatar do
	    { src: bindable[:user][:profile_image_url] }
	  end

	  binding :user do
		  bindable[:user][:name]
		end

		binding :show do
		  { href: router.group(:tweet).path(:show, tweet_id: bindable[:id]) }
		end

		binding :twitter do
		  { href: "http://twitter.com/#{bindable[:user][:screen_name]}/status/#{bindable[:id]}" }
		end
	end

	scope :tweet2 do
	  binding :avatar do
	    { src: bindable[:user][:profile_image_url] }
	  end

	  binding :user do
		  bindable[:user][:name]
		end

		binding :show do
		  { href: router.group(:tweet).path(:show, tweet_id: bindable[:id]) }
		end

		binding :twitter do
		  { href: "http://twitter.com/#{bindable[:user][:screen_name]}/status/#{bindable[:id]}" }
		end
	end
end