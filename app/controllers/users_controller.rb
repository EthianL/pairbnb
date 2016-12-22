enable :sessions

class UsersController < ApplicationController
   
   post '/login' do
   
    if user = User.authenticate(params[:email], params[:password])
        
    session[:current_user_id] = user.id
    redirect '/home'

    else
    redirect '/'
    end   
end


post '/register' do
   
    user = User.new(params)
    if user.save
    session[:current_user_id] = user.id
        
    else
        
    redirect '/home'
    end
end


get '/logout' do
    
    session[:current_user_id] = nil
    redirect '/'
end
end
