require 'rails_helper'

RSpec.describe User, type: :model do

  it "is valid with valid attributes" do
    expect(create(:user)).to be_valid
  end

  it "is not valid without a first_name" do
    user = build(:user, first_name: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without an email" do
    user = build(:user, email: nil)
    expect(user).to_not be_valid
  end

  it "is not valid if email is not unique" do
    user1 = create(:user)
    user2 = build(:user, first_name: "Chris", email: "test@test.com", password: "123456")
    expect(user2).to_not be_valid
  end

  it "is not valid if email format doesn't include @" do
    user = build(:user, email: "testcom")
    expect(user).to_not be_valid
  end
end
