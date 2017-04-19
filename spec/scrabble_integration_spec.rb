require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('scrabble case path', {:type => :feature}) do
  it('process the letters entered and will return the sum of those letters')do
    visit('/')
    fill_in('word', :with => 'qqqq')
    click_button('Send')
    expect(page).to have_content('40')
  end
end
