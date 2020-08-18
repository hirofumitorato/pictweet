require 'rails_helper'
describe User do
  describe '#create' do
    it "メールアドレスがない場合は登録できないこと" do
      user = User.new(nickname: "kkk", email: "", password: "00000000", password_confirmation: "00000000")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end
  end
end