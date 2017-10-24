require 'spec_helper'

describe 'Single Beer tests' do

  before(:each) do
    service = PunkIpaBeersService.new
    @json = service.single_beer_call("1")
  end

  it 'ID should be have an integer value' do
    expect(@json['id']).to be_kind_of(Integer)
  end

  it 'ID should have a range between 1 and 25' do
    expect(@json['id']).to be_between(1, 25)
  end





end
