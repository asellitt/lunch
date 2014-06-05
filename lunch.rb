require 'sinatra/base'
require 'json'

class Lunch < Sinatra::Base
  set :bind, '0.0.0.0'
  set :raise_errors, false
  set :show_exceptions, false

  before do
    content_type 'application/json'
  end

  get '/' do
    restaurants.to_json
  end

  get '/random' do
    random_restaurant(restaurants).to_json
  end

  get '/within/:distance' do
    restaurants_within(params[:distance]).to_json
  end

  get '/within/:distance/random' do
    random_restaurant(restaurants_within(params[:distance])).to_json
  end

private

  def random_restaurant(restaurants)
    restaurants[Random.rand(restaurants.count)]
  end

  def restaurants_within(distance)
    restaurants.select{ |restaurant| restaurant[:distance] <= :distance.to_i }
  end

  def restaurants
    [
      {
        :name => 'Brimm CC',
        :type => 'Japanese',
        :distance => 150,
      },
      {
        :name => "Grill'd",
        :type => 'Burgers',
        :distance => 350,
      },
      {
        :name => 'Cinamons',
        :type => 'Sri Lankan',
        :distance => 130,
      },
      {
        :name => 'Tom Toon Thai',
        :type => 'Thai',
        :distance => 400,
      },
      {
        :name => 'Earl Canteen',
        :type => 'PORK BELLEH!',
        :distance => 400,
      },
      {
        :name => 'Purple Peanuts',
        :type => 'Japanese',
        :distance => 350,
      },
      {
        :name => 'Goz City',
        :type => 'Turkish',
        :distance => 170,
      },
      {
        :name => 'Mr Burger',
        :type => 'Burgers',
        :distance => 650,
      },
    ]
  end
end

Lunch.run!
