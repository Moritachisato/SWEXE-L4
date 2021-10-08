require 'bcrypt'

signup_password = BCrypt::Password.create("bbb")
puts signup_password
login_password = BCrypt::Password.new(signup_password)

if login_password == "bbb"
    p "ログイン成功"
end