require 'rails_helper'

describe 'Visitor visit homepage' do
  it 'successfully' do
    visit root_path
    expect(page).to have_content(I18n.t('home.index.welcome'))
  end
end
