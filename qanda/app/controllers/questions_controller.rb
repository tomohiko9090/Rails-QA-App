class QuestionsController < ApplicationController
  # 1. 質問一覧表示
  def index 
  end

  # 2. 質問詳細ページ表示
  def show
    @question = Question.find(params[:id])　#データを取り出す
    p @question
  end

  # 3. 質問の作成
  def new
    @question = Question.new
  end

  # 4. 質問の登録
  def create
    # Questionモデルを初期化
    @question = Question.new(question_params)

    # Question.save
    @question.save

    # showへリダイレクト
    redirect_to @question
  end

  # 5. 質問の編集
  def edit
  end

  # 6. 質問の更新
  def update
  end

  # 7. 質問の削除
  def destroy
  end
  
  # 以下データ形式の改ざん防止（permitされたものだけ、データが入ってくるようになる）
  private
  def question_params
    params.require(:question).permit(:title, :name, :content)
  end

end