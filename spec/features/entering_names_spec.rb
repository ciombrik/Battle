feature "Entering names" do
  scenario "submits players names" do
    visit "/"
    fill_in "Player_1", with: "Goober"
    fill_in "Player_2", with: "Alex"
    click_button "submit"
    expect(page).to have_content "Alex vs Goober"
  end
end
