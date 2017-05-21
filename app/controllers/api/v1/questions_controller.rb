class Api::V1::QuestionsController < Api::V1::BaseController
  def create
    @question = Question.new(question_params)
    if @question.save
      render json: @question
    else
      raise ActionController::RoutingError.new('Not Found')
    end
  end

  private
  def question_params
    params.permit(:text)
  end
end
