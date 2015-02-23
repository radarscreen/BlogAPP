Rails.application.routes.draw do


  #does this need to be PLURAL? blogs#index
  #hey Paris! It's Elie....why would you name a controller blog??
  #you have two controllers....authors and posts....
  #wtf is blog????? Let's fix that below....Pat concurs...
  root 'authors#index'

  resources :authors do
    resources :posts, shallow: true
  end


#            root GET    /                                       authors#index
#    author_posts GET    /authors/:author_id/posts(.:format)     posts#index
#                 POST   /authors/:author_id/posts(.:format)     posts#create
# new_author_post GET    /authors/:author_id/posts/new(.:format) posts#new
#       edit_post GET    /posts/:id/edit(.:format)               posts#edit
#            post GET    /posts/:id(.:format)                    posts#show
#                 PATCH  /posts/:id(.:format)                    posts#update
#                 PUT    /posts/:id(.:format)                    posts#update
#                 DELETE /posts/:id(.:format)                    posts#destroy
#         authors GET    /authors(.:format)                      authors#index
#                 POST   /authors(.:format)                      authors#create
#      new_author GET    /authors/new(.:format)                  authors#new
#     edit_author GET    /authors/:id/edit(.:format)             authors#edit
#          author GET    /authors/:id(.:format)                  authors#show
#                 PATCH  /authors/:id(.:format)                  authors#update
#                 PUT    /authors/:id(.:format)                  authors#update
#                 DELETE /authors/:id(.:format)                  authors#destroy

end
