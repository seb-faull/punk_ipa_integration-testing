require 'spec_helper'

describe 'Single Beer tests' do

  before(:each) do
    service = PunkIpaBeersService.new
    @json = service.single_beer_call("1")
  end







end
