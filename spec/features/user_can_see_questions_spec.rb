require 'rails_helper'

describe 'When I visit `/questions`' do
  it 'I see a list of questions' do
    create_list(:question, 3)

    visit '/questions'

    expect(page).to have_content("Why1?")
    expect(page).to have_content("Why2?")
    expect(page).to have_content("Why3?")
  end
end
