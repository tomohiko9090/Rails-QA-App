class UsersController < ApplicationController
  def index 
    @num = 10 + 1 #numはインスタンス変数
    @users = User.all #ユーザーテーブルのデータを取得して、インスタンス変数に入れておく
    # render plain: "Hello World!"# renderメソッド → ブラウザで表示するためのレンダリングするやつ
  end
end
