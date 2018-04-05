def sign_in_and_play
  visit('/')
  fill_in 'player1', with: 'David'
  fill_in 'player2', with: 'John'
  click_button 'Submit'
end
