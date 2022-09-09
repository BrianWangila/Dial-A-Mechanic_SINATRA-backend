class ApplicationController < Sinatra::Base

  set :default_content_type, "application/json"

  get '/mechanics' do
    mechanic = Mechanic.all
    mechanic.to_json(include: :reviews)
  end

  get '/mechanics/:id' do
    mechanic = Mechanic.find(params[:id])
    mechanic.to_json(include: :reviews)
  end 

  delete '/mechanics/:id' do
    mechanic = Mechanic.find(params[:id])
    mechanic.delete
    mechanic.to_json
  end

  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.delete
    review.to_json
  end

  patch '/mechanics/:id' do
    mechanic = Mechanic.find(params[:id])
    mechanic.update(
      shop_name: params[:shop_name],
      experience: params[:experience],
      image_url: params[:image_url],
      number: params[:number],
      category: params[:category],
      location: params[:location],
      about: params[:about],
      email: params[:email]
    )
    mechanic.to_json
  end

  patch '/reviews/:id' do
    review = Review.find(params[:id])
    review.update(
      rating: params[:rating],
      comment: params[:comment]
    )
    review.to_json
  end

  post '/mechanics' do
    mechanic = Mechanic.create(
      shop_name: params[:shop_name],
      experience: params[:experience],
      image_url: params[:image_url],
      number: params[:number],
      category: params[:category],
      location: params[:location],
      about: params[:about],
      email: params[:email],
      mechanic_name: params[:mechanic_name]
    )
    mechanic.to_json
  end

  post '/reviews' do
    review = Review.create(
      mechanic_id: params[:mechanic_id],
      name: params[:name],
      rating: params[:rating],
      comment: params[:comment]
    )
    review.to_json
  end
end