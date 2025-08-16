class Feedback < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: 1..5, message: 'should be 1..5' }
  after_create_commit -> { broadcast_prepend_to "feedbacks" }
  after_update_commit -> { broadcast_replace_to "feedbacks" }
end
