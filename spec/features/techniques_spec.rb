require "rails_helper"

RSpec.describe Technique, :type => :feature do
  describe 'index' do
    it 'should show a list of techniques' do
      5.times { FactoryGirl.create :technique, title: 'A special title for a special page' }
      visit techniques_path
      expect(page).to have_text 'A special title for a special page', count: 5
    end

    it 'should have a link on each technique' do
      technique = FactoryGirl.create :technique, title: 'A special title for a special page'
      visit techniques_path
      expect(page).to have_link('A special title for a special page', :href => technique_path(technique.id))
    end
  end

  describe 'show' do
    it 'should show a specific technique' do
      technique = FactoryGirl.create :technique
      visit technique_path(technique.id)
      expect(page).to have_text technique.subtitle
    end
  end
end
