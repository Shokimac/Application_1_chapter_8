class BooksController < ApplicationController
  def index
    #一覧表示の為にDBから全てのデータを引っ張ってくる
    @books = Book.all

    #Viewへ渡すための空のモデルオブジェクトを精製してインスタンス変数へ入れる
    @book = Book.new
  end

  def create
    #ストロングパラメータを使用してデータを受け取る
    book = Book.new(params[:id])
    #DBへの保存
    book.save
    #詳細ページへのリダイレクト
    redirect_to top_path
  end

  def show

  end

  private

  def list_params
    params.require(:book).permit(:title, :body)
  end

end
