class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @question = @questions.first
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
    @answer = Answer.new
  end

  def new
    @question = Question.new
  end

  def create
    Question.create(question_params)
    redirect_to action: :index
  end

  private

  def question_params
    params.require(:question).permit(:title, :content, :name)
  end
end