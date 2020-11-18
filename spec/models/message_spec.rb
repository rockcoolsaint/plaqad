require 'rails_helper'

RSpec.describe Messages, type: :model do
  context 'validations' do
    it do
      should validate_presence_of(:name)
      should validate_presence_of(:entry)
      should validate_presence_of(:ip_address)
    end
  end
end
