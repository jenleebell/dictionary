require ('capybara/rspec')
require ('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions,false)

describe('the definition path', {:type => :feature}) do
  it('processes user word entry and adds it to the words list') do
  visit('/')
  fill_in('word_input', :with => 'Cat')
  fill_in('definition_input', :with => 'Cute and cuddly feline')
  click_button('Add Word')
  expect(page).to have_content('Cat')
  end
end
