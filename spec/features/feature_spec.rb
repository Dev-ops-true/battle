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
   attacked
    expect(page).to have_content('Rob has attacked James')
  end
end

feature 'attacking player 2 and returning player 2 HP'  do
  scenario 'player 1 attacks player 2' do
   sign_in_and_play
   attacked
    expect(page).to have_content('James:90HP')
  end
end

feature 'attacking player 1'  do
  scenario 'player 2 attacks player 1' do
   sign_in_and_play
   attacked
   attacked
    expect(page).to have_content('Rob:90HP')
  end
end

feature 'confirming player 1 was attached'  do
  scenario 'player 2 attacks player 1' do
   sign_in_and_play
   attacked
   attacked
    expect(page).to have_content('James has attacked Rob')
  end
end

feature 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content("Rob's turn")
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      attacked
      expect(page).not_to have_content("Rob's turn")
      expect(page).to have_content("James's turn")
    end
  end

feature 'Player loses if HP is 0' do
  scenario 'The player will lose if their HP reaches 0' do
   sign_in_and_play
    fight_to_death
    expect(page).to have_content("Loses!!!")
  end
end      
end