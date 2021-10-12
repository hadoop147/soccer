 #describe "associations" do
 #  it{ is_expected.to have_many(:comments) }
 #  end

#require "rails_helper"

#RSpec.describe Pitch, type: :model do
#  it "has a name" do
#    skip
#  end
#end

require "rails_helper"

RSpec.describe Pitch, type: :model do
  it "has a name" do # yep, you can totally use 'it'
    pitch = Pitch.create!(name: "My Awesome Idea Name") # creating a new idea 'instance'
    expect(pitch.name).to eq("My Awesome Idea Name") # this is our expectation
  end
end

require "rails_helper"

RSpec.describe Pitch, type: :model do
  it "has a name" do # yep, you can totally use 'it'
    pitch = Pitch.create!(name: "My Awesome Idea Name") # creating a new idea 'instance'
    second_pitch = Pitch.create!(name: "My Second Idea Name") # creating another new idea 'instance'
    expect(second_pitch.name).to eq("My Second Idea Name") # this is our expectation
  end
end

#require "rails_helper"

#RSpec.describe Pitch, type: :model do
#  it "has a description" do
#    skip
#  end
#end