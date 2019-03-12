require_relative 'config/environment'

class App < Sinatra::Base
  get('/'){erb :index}
  get('/new'){erb :create_puppy}
  post '/puppy' do
    new_puppy = Puppy.new(params[:name], params[:breed], params[:age])
    @name, @breed, @age = new_puppy.name, new_puppy.breed, new_puppy.age
    erb :display_puppy
  end
end
