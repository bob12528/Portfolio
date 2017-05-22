Rails.application.routes.draw do
  #resources :movies
  #resources :rankings
  #resources :comments
	root 'pages#startup'
 	get 'startup/index'

 	get 'startup/movielist'

 	get 'startup/addrating'
 	post 'startup/addrating'

 	get 'startup/viewrating'

 	get 'startup/movie1'

 	get 'startup/movie2'

 	get 'startup/movie3'

 	get 'startup/movie4'

 	get 'startup/movie5'

 	get 'startup/addratinghandle'
 	post 'startup/addratinghandle'

 	get 'startup/new'
 	post 'startup/new'

 	#new for take-home final
 	get 'startup/addcomment'
 	post 'startup/addcomment'

 	get 'startup/addcommenthandle'
 	post 'startup/addcommenthandle'

 	get 'startup/viewcomment'

 	get 'startup/new2'
 	post 'startup/new2'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
