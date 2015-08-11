class User < ActiveRecord::Base
  phony_normalize :phone, :default_country_code => 'US'
  
end
