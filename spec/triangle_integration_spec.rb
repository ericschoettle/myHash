require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exception, false)

describe('triangle') do
  describe('type', :type => :feature) do
    it "checks type of triangle" do
      visit('/')
      fill_in('side1', :with => '5')
      fill_in('side2', :with => '3')
      fill_in('side3', :with => '3')
      click_button('Decide')
       save_and_open_page
      expect(page).to have_content("Isosceles")
    end
  end
end
