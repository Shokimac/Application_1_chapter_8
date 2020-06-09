class BooksController < ApplicationController
  def index
    #一覧表示の為にDBから全てのデータを引っ張ってくる
    @books = Book.all

    @book = Book.new
  end

  def create
    #ストロングパラメータを使用してデータを受け取る
    book = Book.new(list_params)
    #DBへの保存
    book.save
    #詳細ページへのリダイレクト
    redirect_to book_path(book.id)
  end

  def show
    #DBから、IDをもとにデータを引っ張ってインスタンス変数へと入れる
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(list_params)
    redirect_to book_path(book.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private

  def list_params
    params.require(:book).permit(:title, :body)
  end

end
