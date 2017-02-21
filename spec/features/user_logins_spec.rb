require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do
  before :each do
    @user = User.create!(name: 'jj', password: 'funfunfun', email: 'fun@email.com')
  end



  scenario "They see a product page" do
    # ACT
    visit '/login'

    #click_on 'Test'

    # DEBUG / VERIFY

    fill_in 'email', with: 'fun@email.com'
    fill_in 'password', with: 'funfunfun'
    click_button 'Submit'
    sleep 1
    save_screenshot
    expect(page).to have_content('Signed in as')
  end
end
