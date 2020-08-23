module SessionsHelper
  
   # 引数に渡されるユーザーオブジェクトでログインする。
  def log_in(user)
    session[:user_id] = user.id
  end
  # この定義でログインをしてcreateアクション、そしてリダイレクトする準備完了
  
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end
end
