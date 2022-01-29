# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end


RSpec.describe 'Creating an author', type: :feature do
  scenario 'valid inputs' do
    visit new_author_path
    fill_in 'Title', with: 'j.k. rowling'
    click_on 'Create Author'
    visit authors_path
    expect(page).to have_content('j.k. rowling')
  end
end


RSpec.describe 'Creating a price', type: :feature do
  scenario 'valid inputs' do
    visit new_price_path
    fill_in 'price', with: 50
    click_on 'Create Price'
    visit prices_path
    expect(page).to have_content(50)
  end
end

RSpec.describe 'Creating an date', type: :feature do
  time = Time.new

  scenario 'valid inputs' do
    visit new_date_path
    fill_in 'Title', with: time
    click_on 'Create Date'
    visit authors_path
    expect(page).to have_content(time)
  end
end