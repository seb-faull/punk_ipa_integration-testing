require 'spec_helper'

describe 'Single Beer tests' do

  before(:all) do
    service = PunkIpaBeersService.new
    @json = service.single_beer_call("1")
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

  it 'Description should have a string value' do
    expect(@json['description']).to be_kind_of(String)
  end

  it 'ABV should have a float value' do
      expect(@json['abv']).to be_kind_of(Float).or be_kind_of(Integer)
  end

  it 'IBU should have a float value' do
      expect(@json['ibu']).to be_kind_of(Float).or be_kind_of(Integer).or be_kind_of(NilClass)
  end

  it 'Target FG should have a float value' do
      expect(@json['target_fg']).to be_kind_of(Integer)
  end

  it 'Target OG should have a float value' do
      expect(@json['target_og']).to be_kind_of(Float).or be_kind_of(Integer).or be_kind_of(NilClass)
  end

end
