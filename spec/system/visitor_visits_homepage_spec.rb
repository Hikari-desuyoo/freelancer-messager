require 'rails_helper'

describe 'Visitor visit homepage' do
  it 'successfully' do
    fake_response(
      status: 200, 
      json: 'user_stats_200.json', 
      route: '/api/v1/users_stats', 
      method: :get
    )
    visit root_path
    expect(page).to have_content(I18n.t('home.index.welcome'))
  end
end
