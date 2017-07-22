get '/hello' do
  'Hello world!'
end

get '/users' do
  @users = User.all
  erb :"users/index"
end

get '/users/new' do
  erb :"/users/new"
end

post '/users' do
  @user = User.new
  @user.name = params[:name]
  @user.salutation = params[:salutation]
  @user.email = params[:email]
  @user.save
  redirect "/users"
end

get '/users/:id' do
  id = params[:id].to_i
  @user = User.find(id)
  erb :"/users/show"
end

get '/users/:id/edit' do
end

patch '/users/:id' do
end

delete '/users/:id' do
end

