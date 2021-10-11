#require "rails_helper"

#RSpec.describe Pitch, type: :model do
#  it "has a name" do
#    skip
#  end
#end

require "rails_helper"

RSpec.describe Pitch, type: :model do
  it "has a name" do # yep, you can totally use 'it'
    pitch = Pitch.create!(name: "My Awesome Pitch Name") # creating a new idea 'instance'
    expect(pitch.name).to eq("My Awesome Pitch Name") # this is our expectation
  end
end