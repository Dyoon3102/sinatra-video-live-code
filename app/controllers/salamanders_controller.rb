get '/' do
  redirect '/salamanders'
end

get '/salamanders' do
  @salamanders = Salamander.all
  erb :'/salamanders/index'
end

get '/salamanders/new' do
  erb :'/salamanders/new'
end

post '/salamanders' do
  salamander = Salamander.create(params)
  # redirect '/'
  redirect "/salamanders/#{salamander.id}"
end

get '/salamanders/:id' do
  @salamander = Salamander.find(params[:id])
  erb :'/salamanders/show'
end
