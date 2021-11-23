require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'Database table' do
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :description }
    it { is_expected.to have_db_column :genre }
    it { is_expected.to have_db_column :year }
    it { is_expected.to have_db_column :image }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :genre }
    it { is_expected.to validate_presence_of :year }
    it { is_expected.to validate_presence_of :image }
  end

  describe 'Factory' do
    it 'is expected to have valid Factory' do
      expect(create(:movie)).to be_valid
    end
  end
end
