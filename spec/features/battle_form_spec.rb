feature 'Battle Name Form' do
  scenario 'Can enter in player names and see them' do
    sign_in_and_play
    expect(page).to have_content 'David vs. John'
  end

  scenario 'See player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content "60hp"
  end

  scenario 'Attack player 2 and get confirmation' do
    sign_in_and_play
    click_button 'Attack Player 2'
    expect(page).to have_content "You've attacked player 2!"
  end
end
