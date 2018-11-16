feature 'welcoming user' do
  scenario 'saying hello after open the website' do
    visit('/')
    expect(page).to have_content 'Hello there!'
  end
end

feature 'asking user for name' do
  scenario 'when web is open ask for name' do
    visit('/')
    expect(page).to have_content "What's your name?"
  end
end

feature 'asking user for name' do
  scenario 'when web is open ask for name' do
    visit('/')
    expect(page).to have_content "When's is your next Birthday?"
  end
end

feature 'asking user for name' do
  scenario 'when web is open ask for name' do
    visit('/')
    expect(page).to have_content "If it's today I have a suprise for you!!"
  end
end

# feature 'raise errror' do
#   scenario 'raise error if date is invalid' do
#     visit('/')
#     fill_in :user_name, with: 'Matt'
#     fill_in :birth_day, with: '31'
#     fill_in :birth_month_year, with: '2018-11'
#     click_button 'Go'
#     expect(page).to have_content "Invalid date please concentrate next time !"
#   end
# end
