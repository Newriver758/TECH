class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
    @answers = @question.answers
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.user = current_user if current_user.present?
    if @question.save
      redirect_to @question
    else
      render :new
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :content, :name, :user_id)
  end
end