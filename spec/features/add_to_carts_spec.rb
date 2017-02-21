require 'rails_helper'

RSpec.feature "AddtoCart", type: :feature, js: true do
  before :each do
    @category = Category.create! name: 'Apparel'


    @category.products.create!(
        name:  "Test",
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
    )
  end



  scenario "They see a product page" do
    # ACT
    visit root_path

    click_on 'Add'
    sleep 1
    # DEBUG / VERIFY
    save_screenshot
    expect(page).to have_content('My Cart (1)')
  end
end
