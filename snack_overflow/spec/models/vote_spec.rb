require 'rails_helper'

RSpec.describe Vote, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

require 'factory_girl_rails'

describe Vote do
  it "has a valid FACTORY" do
    expect(FactoryGirl.create(:vote)).to be_valid
  end

  # it "has a title that is Big" do
  #   expect(FactoryGirl.create(:nom).title).to eq('Biggie Smalls')
  # end


end