require_relative "config/environment"

class App < Sinatra::Base
  get "/" do
    erb :index
  end
  get "/new" do
    erb :create_puppy
  end
  post "/puppy" do
    @age = params[:age]
    @name = params[:name]
    @breed = params[:breed]
    puppy = Puppy.new(name: @name, months_old: @age, breed: @breed)
    erb :display_puppy
  end
end
