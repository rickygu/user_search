require 'rails_helper'

RSpec.describe User, type: :model do
  it "will find user by name address or phone" do
    user = User.create(name: "Alex",  line1: "first street", city: "SF", state: "cali", zip: "12345", phone: "7654321")
    user2 = User.create(name: "matt",  line1: "second street", city: "SF", state: "cali", zip: "666666", phone: "5555555")
    result = User.search("alex")
    expect(result.count).to eq 1
    expect(result.first).to eq user
    
    result = User.search "matt"
    expect(result.count).to eq 1
    expect(result.first).to eq user2
    
    result = User.search "SF"
    expect(result.count).to eq 2
    

    result = User.search "12345"
    expect(result.count).to eq 1    
    expect(result.first).to eq user
    
    result = User.search "666666"
    expect(result.count).to eq 1    
    expect(result.first).to eq user2
    
    result = User.search "7654321"
    expect(result.count).to eq 1    
    expect(result.first).to eq user
    
  end
  
end
