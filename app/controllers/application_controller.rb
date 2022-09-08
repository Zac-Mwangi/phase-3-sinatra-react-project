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

  # delete
  delete '/comments/:id' do
    comments = Comment.find(params[:id])
    comments.destroy 
    comments.to_json
  end 

  # post
  post '/comments' do
    comments = Comment.create(
      name: params[:name],
      email: params[:email],
      message: params[:message]
    )
    comments.to_json
  end

  # patch
  patch '/comments/:id' do
    comments = Comment.find(params[:id])
    comments.update(
      name: params[:name],
      email: params[:email],
      message: params[:message]
    )
    comments.to_json
  end


  # PRODUCTS
  # get
  get '/products' do 
    products = Product.all.order(:name)
    products.to_json
  end 

  # post
  post '/products' do
    products = Product.create(
      title: params[:title],
      price: params[:price],
      description: params[:description],
      category: params[:category],
      image: params[:image],
      rating: "2.5"
    )
    products.to_json
  end

end
