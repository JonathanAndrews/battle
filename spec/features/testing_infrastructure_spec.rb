require 'capybara/rspec'

feature "Testing infrastructure" do
  scenario "Can run app and check page content" do
    visit("/")
    expect(page).to have_content "Testing infrastructure working!"
  end

  scenario "can fill in form and submit name" do
    visit("/")
    fill_in("First Name", with: "Oscar")
    fill_in("Last Name", with: "SPAGHETTI AND MEATBALLS")
    click_button("Submit")
    expect(page).to have_content("Oscar SPAGHETTI AND MEATBALLS")
  end
end
