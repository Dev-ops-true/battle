feature 'Two players'  do
  scenario 'Two players can enter their names and see them on screen' do
   sign_in_and_play
    expect(page).to have_content('Rob vs James')
  end
end

feature 'viewing hit points'  do
  scenario 'you can see player 2s hit points' do
   sign_in_and_play
    expect(page).to have_content('James:100HP')
  end
end

feature 'attacking player 2'  do
  scenario 'player 1 attacks player 2' do
   sign_in_and_play
   click_button('Attack')
    expect(page).to have_content('You have attacked player 2')
  end
end