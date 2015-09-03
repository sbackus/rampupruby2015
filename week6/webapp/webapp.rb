require 'sinatra'
require 'pony'


get '/mailme' do
  Pony.mail :to => "samuel.backus@gmail.com",
            :from => 'god',
            :subject => 'Howdy, Partna!',
            :body => 'hi'

  "mail sent!"
end