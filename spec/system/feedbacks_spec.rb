require "rails_helper"

RSpec.describe "Feedbacks", type: :system do
  it "allows a user to submit feedback" do
    visit root_path

    fill_in "feedback_content", with: "This app is awesome!"
    fill_in "feedback_rating", with: 5
    click_button "Submit Feedback"

    expect(page).to have_content("This app is awesome!")
    expect(page).to have_selector(".star", count: 5)
  end
  it "displays error message when invalid feedback is created" do
    visit root_path

    fill_in "feedback_content", with: ""
    fill_in "feedback_rating", with: 6
    click_button "Submit Feedback"

    expect(page).to have_content("2 errors prevented this feedback from being saved")
  end
end
