class StaticPagesController < ApplicationController
    
     before_action :require_login, only: [:users]

    
     def home
          @user = User.new
     end
     
end
