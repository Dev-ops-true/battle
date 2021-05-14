 def sign_in_and_play
  visit('/')
  fill_in('Player 1 Name', with: 'Rob')
  fill_in('Player 2 Name', with: 'James')
  click_button('Submit')
 end

 def attacked
  click_button('Attack')
   click_link('OK')
 end

 def fight_to_death
  19.times {
    click_button('Attack')
   click_link('OK')
  }
 end