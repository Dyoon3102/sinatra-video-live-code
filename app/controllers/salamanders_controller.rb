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

get '/salamanders/:id/edit' do
  @salamander = Salamander.find(params[:id])
  erb :'/salamanders/edit'
end

put '/salamanders/:id' do
  salamander = Salamander.find(params[:id])
  salamander.update(name: params[:name], continent: params[:continent], color: params[:color])

  redirect "/salamanders/#{salamander.id}"
end

delete '/salamanders/:id' do
  salamander = Salamander.find(params[:id])
  salamander.destroy
  redirect "/salamanders"
end
