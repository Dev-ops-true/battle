feature 'Two players'  do
  scenario 'Two players can enter their names and see them on screen' do
   sign_in_and_play
    expect(page).to have_content('Rob vs James')
  end
end

feature 'viewing hit points'  do
  scenario 'ou can see player 2s hit points' do
   sign_in_and_play
    expect(page).to have_content('James:100HP')
  end
end
