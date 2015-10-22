require 'spec_helper'

describe People do

  it "There is a first name" do
    name = People.new ({:first => ''})
    expect(name.save).to eq ('')
  end

  it "There is a last name" do
    name = People.new ({:last => ''})
    expect(name.last).to eq ('')
  end

  it "There is a full name" do
    name = People.new ({:first + :last =>''})
    expect(name.first, name.las).to eq ('')
  end


end
