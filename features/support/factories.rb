require 'factory_girl'
#require 'capybara/rails'

Factory.define :user do |f|
  f.email 'test@mail.net'
  f.password 'password'
  f.password_confirmation 'password'
end

Factory.define :item do |f|

end
