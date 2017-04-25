require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exception, false)

describe('hash') do
  describe('type', :type => :feature) do
    it "display hash" do
      visit('/')
      fill_in('keys', :with => 'apple')
      fill_in('values', :with => 'red')
      click_button('Hash')
      expect(page).to have_content('apple => red')
    end
  end
end
