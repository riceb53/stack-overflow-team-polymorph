enable :sessions

get '/login' do
  erb :login
end



post '/login' do
 user = User.find_by(user_name: params[:user_name])
 if params[:password] == user.password
  session[:user_id] = user.id
    redirect '/'
  else
    redirect '/login'
  end
end

get '/create_user' do
  erb :new_user
end

post '/create_user' do
  user = User.new(params[:user])

  if user.save
    # handle the happy path
    redirect '/login'
  else
    @errors = user.errors.messages
    # @user_name = @errors[:user_name].join(' ')
    # @password = @errors[:password].join(' ')
    erb :new_user
 # we failed validations, we need to re-render the form with our errors
  end
end

get '/logout' do
  session.clear
  redirect '/login'
end




