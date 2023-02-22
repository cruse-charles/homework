require 'rails_helper'
require 'shoulda-matchers'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
    it { should validate_presence_of(:email) 
    it { should validate_presence_of(:password_digest) 
    it { should validate_length_of(:password > 6) 
  end
end