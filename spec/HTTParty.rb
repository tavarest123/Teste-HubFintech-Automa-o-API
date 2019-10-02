require "httparty"

response = HTTParty.post("https://api-de-tarefas.herokuapp.com/users",
                         :body => {
                           "user": {
                             "email": "brunobatista22@gmail.com",
                             "password": "123456",
                             "password_confirmation": "123456",
                           },

                         })
puts "response code :#{response.code}"
puts "response message :#{response.message}"
puts "response headers:#{response.headers}"
puts "response body :#{response.body}"
