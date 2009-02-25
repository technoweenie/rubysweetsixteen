require 'sinatra'

quotes = [
  'Ruby took the car without asking',
  'Ruby snuck a few beers from the fridge',
  'Ruby threw a house party while Matz was away for vacation',
  'Ruby snuck into a rated R movie',
  'Ruby slept around and got selector namespaces',
  'Ruby gave $5 to David Black to buy it some cigarettes',
  'Ruby hit a growth spurt last summer'
  ]

get '/' do
  @quote = quotes[rand(quotes.size)]
  haml :index
end