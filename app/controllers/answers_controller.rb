class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build(answer_params)
    @answer.user = current_user

    if @answer.save
      redirect_to @question, notice: '回答が投稿されました。'
    else
      @answers = @question.answers
      render 'questions/show'
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:content).merge(user_id: current_user.id)
  end
end
