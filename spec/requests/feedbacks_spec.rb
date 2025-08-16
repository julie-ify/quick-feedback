require "rails_helper"

RSpec.describe "Feedbacks", type: :request do
  describe "POST /feedbacks" do
    it "creates a new feedback with valid params" do
      expect {
        post feedbacks_path, params: { feedback: { content: "Nice!", rating: 5 } }
      }.to change(Feedback, :count).by(1)

      expect(response).to have_http_status(:see_other).or have_http_status(:redirect)
    end

    it "does not create feedback with invalid params" do
      expect {
        post feedbacks_path, params: { feedback: { content: "", rating: 3 } }
        }.not_to change(Feedback, :count)

      expect(response).to have_http_status(:unprocessable_content)
    end
  end
end
