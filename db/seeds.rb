2.times do
  name = Faker::Address.state_abbr
  Airport.create(code: name)
end

(0..20).each { |i|
  from_airport = Airport.find(1)
  to_airport = Airport.find(2)
  start_date = i.days.ago
  duration = rand(6)
  Flight.create(from_airport_id: from_airport.id,
                to_airport_id: to_airport.id,
                start_date: start_date,
                flight_duration: duration)
}