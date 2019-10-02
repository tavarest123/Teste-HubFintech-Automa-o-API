Dado("o endereço da API para cadastro") do
  $url_base = "https://api-de-tarefas.herokuapp.com/users"
end

Quando("Realizo uma requisição para cadastro") do
  $response = HTTParty.post($url_base, :body => {
                                         "user": {
                                           "email": @email,
                                           "password": "123456",
                                           "password_confirmation": "123456",
                                         },

                                       })
end

Então("a API irá retornar os dados do cadastro com o código {int}") do |int|
  puts "response body :#{$response.body}"
  puts "response code :#{$response.code}"
end

Quando("Realizo uma requisição para cadastro com o mesmo email") do
  $response = HTTParty.post($url_base, :body => {
                                         "user": {
                                           "email": "brunobatista22@gmail.com",
                                           "password": "123456",
                                           "password_confirmation": "123456",
                                         },

                                       })
end

Então("a API irá retornar os dados do cadastro com o código  {int}") do |int|
  puts "response body :#{$response.body}"
  puts "response code :#{$response.code}"
end

Quando("Realizo uma requisição para cadastro sem a senha") do
  $response = HTTParty.post($url_base, :body => {
                                         "user": {
                                           "email": @email,
                                           "password": "",
                                           "password_confirmation": "",
                                         },

                                       })
end
