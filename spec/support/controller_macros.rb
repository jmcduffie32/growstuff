# Taken unashamedly from https://github.com/plataformatec/devise/wiki/How-To%3a-Controllers-and-Views-tests-with-Rails-3-%28and-rspec%29
module ControllerMacros
  def login_member(member_factory=:member)
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:member]
      member = FactoryGirl.create(member_factory || :member)
      sign_in member
    end
  end
end
