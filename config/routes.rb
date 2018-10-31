Rails.application.routes.draw do
  get '/pdfs/' => 'pdfs#show' 


  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
end
