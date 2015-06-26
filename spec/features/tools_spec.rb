require "rails_helper"

RSpec.describe Tool, :type => :feature do
  describe 'index' do
    it 'should show a list of tools' do
      5.times { FactoryGirl.create :tool, title: 'A special title for a special page' }
      visit tools_path
      expect(page).to have_text 'A special title for a special page', count: 5
    end

    it 'should have a link on each tool' do
      tool = FactoryGirl.create :tool, title: 'A special title for a special page'
      visit tools_path
      expect(page).to have_link('A special title for a special page', :href => tool_path(tool.id))
    end
  end

  describe 'show' do
    it 'should show a specific tool' do
      tool = FactoryGirl.create :tool
      visit tool_path(tool.id)
      expect(page).to have_text tool.subtitle
    end
  end
end
