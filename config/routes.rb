Rails.application.routes.draw do
   root to: "buckets#index"
   resources :posts do
     resources :file_uploads, only: [:new, :create, :destroy]
   end
end