require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @user_name = params[:name]
    "#{@user_name}".reverse
  end

get '/square/:number' do 
  @num = params[:number] * 2.to_i
 "#{num}"
end

end