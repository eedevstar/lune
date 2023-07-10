require 'rails_helper'

RSpec.feature "Visitor visits homepage", type: :feature do
  scenario "they see the page title" do
    visit root_path
    expect(page).to have_text("Movies Overview")
  end
end