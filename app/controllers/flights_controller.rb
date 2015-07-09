class FlightsController < ApplicationController
  def index
    @flights = Flight.search(params)
    @airport_codes = Airport.all.collect { |a| [a.code, a.id] }
    @num_passengers = (1..4).to_a.collect { |x| [x, x] }
  end
end
