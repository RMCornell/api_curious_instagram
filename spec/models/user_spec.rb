require 'rails_helper'

describe User, type: :model do
  let(:user) do
    User.new( name: "Robert",
              nickname: "alchemist5280",
              token: "mytoken")
  end

  it 'exists' do
    expect(user).to be_valid
  end

  it 'is invalid without a name' do
    user.name = nil
    expect(user).not_to be_valid
  end

  it 'is invalid without a nickname' do
    user.nickname = nil
    expect(user).not_to be_valid
  end

  it 'is invalid without a token' do
    user.token = nil
    expect(user).not_to be_valid
  end

end