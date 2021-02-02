module ApplicationHelper
  # カスタムヘルパーを定義する
  
  # ページごとにタイトルを返す
  def full_title(page_name = "") # メソッドの引数の定義
    base_title = "Attendance-A" # 基本となるアプリケーション名を変数に代入
    if page_name.empty? # 引数を受け取っているかの判定
      base_title # 引数page_nameがから文字の場合はbase_titleのみ返す
    else # 引数page_nameがから文字ではない場合
      page_name + " | " + base_title # 文字を連結して返す
    end
  end
  
  def page_title(search = "")
    params[:search] ? "検索結果" : "ユーザー一覧"
  end
  

end