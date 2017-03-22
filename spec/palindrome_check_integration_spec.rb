require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the palindrome check path', {:type => :feature}) do
  it("processes the user entry and checks if it's a palidrome") do
    visit('/')
    fill_in('word', :with => 'Gabriel')
    click_button('Go!')
    expect(page).to have_content('Not a palindrome!')
  end
end
