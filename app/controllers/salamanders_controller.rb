get '/' do
  redirect '/salamanders'
end

get '/salamanders' do
  @salamanders = Salamander.all
  erb :'/salamanders/index'
end

# Salamanders new action
get '/salamanders/new' do
  @skills = Skill.all
  erb :'/salamanders/new'
end

#
post '/salamanders' do
  skills_records = params[:skill].map { |skill_id| Skill.find(skill_id) }
  salamander = Salamander.create(params[:salamander].merge(skill: skills_records)
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
  salamander.update(params[:salamander])

  redirect "/salamanders/#{salamander.id}"
end

delete '/salamanders/:id' do
  salamander = Salamander.find(params[:id])
  salamander.destroy
  redirect "/salamanders"
end
