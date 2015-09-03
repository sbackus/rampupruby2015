require 'sinatra'
require 'pony'

get '/' do

  '<h1>Hello!</h1>
  <p>Welcome to my webpage</p>
  <img src="http://www.catgifpage.com/gifs/268.gif">
  </img>
  <a href="http://www.google.com"> Google </a>'
end

get '/about_me' do
  'My name is Sam. I am a programmer.'
end

get '/today' do
  today = Date.today
  "today is #{today}"
end

get '/random_cat_picture' do
  num = rand(0...3)
  pictures = ["http://cdn.playbuzz.com/cdn/0079c830-3406-4c05-a5c1-bc43e8f01479/7dd84d70-768b-492b-88f7-a6c70f2db2e9.jpg",
    "http://www.vetprofessionals.com/catprofessional/images/home-cat.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/1/1e/Large_Siamese_cat_tosses_a_mouse.jpg"
  ]
  cat_picture = pictures[num]
  "<img src='#{cat_picture}' ></img>"
end

