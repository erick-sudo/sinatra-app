class ApplicationController < Sinatra::Base
    get '/products' do
        Product.all.to_json
    end

    get '/products/:id' do
        Product.find(params[:id]).to_json
    end

    get '/productsby' do
        pp params
        Product.find_by(params).to_json
    end

    get '/users' do
        User.all.to_json
    end

    get '/users/:id' do
        User.find(params[:id]).to_json
    end

    get '/usersby' do
        pp params
        User.find_by(params).to_json
    end

    get '/reviews' do
        Review.all.to_json
    end

    get '/reviews/:id' do
        Review.find(params[:id]).to_json
    end

    get '/reviewsby' do
        Review.find_by(params).to_json(only: [:star_rating, :comment])
    end

    post '/newuser' do
        params[:name]
        status 201
        User.create(name: params[:name]).to_json
    end

end