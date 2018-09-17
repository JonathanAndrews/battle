require 'capybara/rspec'

feature "Testing infrastructure" do

  scenario "can fill in form and submit name" do
    visit("/name")
    fill_in(:player_1, with: "Oscar")
    fill_in(:player_2, with: "SPAGHETTI AND MEATBALLS")
    click_button 'Submit'
    expect(page).to have_content("Oscar SPAGHETTI AND MEATBALLS")
  end
end
