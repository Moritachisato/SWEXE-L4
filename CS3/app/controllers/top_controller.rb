class TopController < ApplicationController
    require 'bcrypt'
    
    def main
        if session[:login_uid]
            render 'main'
        else
            render 'login'
        end
    end
    
    def login
        
        if  Uer.find_by(uid: params[:uid])
            pass = BCrypt::Password.create(params.require(:pass))
            
            if BCrypt::Password.new(pass) == params[:pass]
                session[:login_uid] = params[:uid]
                redirect_to root_path
            else
                render 'login_falled'
            end
        else
            render 'login_falled'
        end
    end
    
    
    def logout
       session.delete(:login_uid)
       redirect_to root_path
    end
    
end
