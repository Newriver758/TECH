class AnswersController < ApplicationController
  
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build(answer_params)
    @answer.user = current_user # ユーザー関連付けが必要な場合

    if @answer.save
      redirect_to question_path(@question), notice: '回答が投稿されました。'
    else
      render 'questions/show', alert: '回答の投稿に失敗しました。'
    end
  end


  private
  def answer_params
    params.require(:answer).permit(:content, :name).merge(question_id: params[:question_id])
  end
  
end
