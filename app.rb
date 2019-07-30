require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @user_name = params[:name]
    "#{@user_name}".reverse
  end

get '/square/:number' do 
  "#{params[:number].to_i ** 2}"
end

get '/say/:number/:phrase' do
    "#{Array.new(params[:number].to_i, params[:phrase]).join(", ")}"
  end

get '/say/:word1/:word2/:word3/:word4/:word5' do 
  "#{params.values.join(" ")}."
end
end