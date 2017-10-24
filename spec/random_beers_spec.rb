require 'spec_helper'

describe 'Random Beer tests' do

  before(:all) do
    service = PunkIpaBeersService.new
    @json = service.random_beer_call
  end

  it 'ID should be have an integer value' do
    expect(@json['id']).to be_kind_of(Integer)
  end

  it 'ID should have a range between 1 and 192' do
    expect(@json['id']).to be_between(1, 400)
  end

  it 'Name should have a string value' do
    expect(@json['name']).to be_kind_of(String)
  end

  it 'Tagline should have a string value' do
    expect(@json['tagline']).to be_kind_of(String)
  end

  it 'First brewed should have a string value' do
    expect(@json['first_brewed']).to be_kind_of(String)
  end

end
