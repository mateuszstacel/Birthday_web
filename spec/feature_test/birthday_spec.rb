feature 'birthday case' do
  scenario 'print happy birthdat to user if have birthday' do
    visit('/')
    fill_in :user_name, with: 'Matt'
    fill_in :birth_day, with: '16'
    fill_in :birth_month_year, with: '2018-11'
    click_button 'Go'
    expect(page).to have_content "Happy Birthday Matt!"
  end
end
