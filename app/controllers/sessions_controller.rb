class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      # 【条件式】？ 【真（true）の場合処理実行】: 【偽（false）の場合処理実行】
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_back_or user
    else
      flash.now[:danger] = "認証に失敗しました。"
      render :new
    end
  end
  
  # ログイン中の場合のみログアウト処理を実行する。
  def destroy
    log_out if logged_in?
    flash[:success] = 'ログアウトしました。'
    redirect_to root_url
  end
end
 