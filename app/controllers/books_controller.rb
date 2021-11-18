class BooksController < ApplicationController

def index
  @books=Book.all
  # index画面に投稿フォームがあるから↓
  @book=Book.new
  # current_userでログインしている人を判断している↓
  @user=current_user
end

def create
  @book=Book.new(book_params)
  @book.user_id = current_user.id
  @book.save
  redirect_to book_path(@book.id)
end

def update
end


def show
  @book=Book.new
  @book=Book.find(params[:id])
  @user=current_user
end

def edit
  @user=current_user
end

def destroy
end




  private

  def book_params
    params.require(:book).permit(:title, :body)
  end


end