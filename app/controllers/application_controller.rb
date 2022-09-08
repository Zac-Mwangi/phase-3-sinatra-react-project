class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

    # COMMENTS
  # get
  get '/comments' do 
    comments = Comment.all.order(:id)
    comments.to_json
  end 

end
