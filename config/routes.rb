Rails.application.routes.draw do
  get '/pdfs/:id' => 'pdfs#show' 


  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
end
