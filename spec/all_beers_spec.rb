require 'spec_helper'

describe 'All Beers tests' do

  before(:all) do
    service = PunkIpaBeersService.new
    @json = service.all_beers_call
  end

  it 'ID should be have an integer value' do
    @json.each do |i|
      expect(i['id']).to be_kind_of(Integer)
    end
  end

  it 'Name should have a string value' do
    @json.each do |i|
      expect(i['name']).to be_kind_of(String)
    end
  end

  it 'Tagline should have a string value' do
    @json.each do |i|
      expect(i['tagline']).to be_kind_of(String)
    end
  end

  it 'First brewed should have a string value' do
    @json.each do |i|
      expect(i['first_brewed']).to be_kind_of(String)
    end
  end

  it 'First brewed should have a string value' do
    @json.each do |i|
      expect(i['first_brewed']).to be_kind_of(String)
    end
  end

  it 'Description should have a string value' do
    @json.each do |i|
      expect(i['description']).to be_kind_of(String)
    end
  end

  it 'ABV should have a float value' do
    @json.each do |i|
      expect(i['abv']).to be_kind_of(Float).or be_kind_of(Integer)
    end
  end

  it 'IBU should have a float, integer or Nil value' do
    @json.each do |i|
      expect(i['ibu']).to be_kind_of(Float).or be_kind_of(Integer).or be_kind_of(NilClass)
    end
  end

  it 'Target FG should have a float value' do
    @json.each do |i|
      expect(i['target_fg']).to be_kind_of(Integer)
    end
  end

  it 'Target OG should have a float, integer or Nil value' do
    @json.each do |i|
      expect(i['target_og']).to be_kind_of(Float).or be_kind_of(Integer).or be_kind_of(NilClass)
    end
  end

  it 'PH should have a float, integer or Nil value' do
    @json.each do |i|
      expect(i['ph']).to be_kind_of(Float).or be_kind_of(Integer).or be_kind_of(NilClass)
    end
  end

  it 'Attenuation Level should have a float, integer or Nil value' do
    @json.each do |i|
      expect(i['attenuation_level']).to be_kind_of(Float).or be_kind_of(Integer).or be_kind_of(NilClass)
    end
  end

  it 'Volumes Value should have a float, integer or Nil value' do
    @json.each do |i|
      expect(i['volume']['value']).to be_kind_of(Float).or be_kind_of(Integer).or be_kind_of(NilClass)
    end
  end

  it 'Volumes Unit should have a String value' do
    @json.each do |i|
      expect(i['volume']['unit']).to be_kind_of(String)
    end
  end
end
