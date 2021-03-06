require 'rails_helper'

RSpec.describe RestaurantCategory, type: :model do
  describe 'DB Table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_many :restaurants }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
  end

  describe 'Factory' do
    it 'should be valid' do
      expect(create(:restaurant_category)).to be_valid
    end
  end
end
