class FeedbacksController < ApplicationController
  before_action :set_feedback, only: %i[like]

  def index
    @feedbacks = Feedback.order(created_at: :desc)
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.likes_count = 0

    if @feedback.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to feedbacks_path, notice: "Feedback added!" }
      end
    else
      render :index, status: :unprocessable_entity
    end
  end

  def like
    @feedback.increment!(:likes_count)
    @feedback.broadcast_replace_to "feedbacks"
  
    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to feedbacks_path }
    end
  end
  
  private

  def set_feedback
    @feedback = Feedback.find(params[:id])
  end

  def feedback_params
    params.require(:feedback).permit(:content, :rating)
  end
end

