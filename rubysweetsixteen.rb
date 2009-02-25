require 'sinatra'

quotes = [
  'Ruby took the car without asking',
  'Ruby snuck a few beers from the fridge',
  'Ruby threw a house party while Matz was away for vacation',
  'Ruby snuck into a rated R movie',
  'Ruby slept around and got selector namespaces'
  ]

get '/' do
  @quote = quotes[rand(quotes.size)]
  haml :index
end

__END__

@@ layout
%html
  %head
    %title Ruby just turned 16!
  %body{:style => "background:#a00"}
    = yield

@@ index
%h1{:style => "color:#fff; font-family:Georga; font-size:72px;"}
  = @quote