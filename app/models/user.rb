class User < ActiveRecord::Base
  phony_normalize :phone, :default_country_code => 'US'
  
  def self.search q
    if Rails.env.production?  
      #postgres ilike
      User.where("name ILIKE ? or line1 ILIKE ? or line2 ILIKE ? or city ILIKE ? or state ILIKE ? or zip ILIKE ? or phone ILIKE ?", "%#{q}%","%#{q}%","%#{q}%","%#{q}%","%#{q}%","%#{q}%","%#{q}%")
    else
      User.where("name LIKE ? or line1 LIKE ? or line2 LIKE ? or city LIKE ? or state LIKE ? or zip LIKE ? or phone LIKE ?", "%#{q}%","%#{q}%","%#{q}%","%#{q}%","%#{q}%","%#{q}%","%#{q}%")
    end
  end
  
end
