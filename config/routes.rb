Rails.application.routes.draw do
 
  # get '/blogs' => 'blogs#index'  #get 'URL'
  #指定されたURLが入力されたら　=> ○○ controller＃アクション
 
  resources :blogs

  root 'blog#index'



end


# URL -> routes -> controller -> #アクション -> html
#リクエスト　　　　　　　　　　　blogs　　　　　　index　　　  リスポンス