feature 'Battle Name Form' do
  scenario 'Can enter in player names and see them' do
    visit('/')
    fill_in 'player1', with: 'David'
    fill_in 'player2', with: 'John'
    click_button 'Submit'
    expect(page).to have_content 'David vs. John'
  end

  scenario 'See player 2s hit points' do
    visit('/play')
    expect(page).to have_content 0
  end
end
