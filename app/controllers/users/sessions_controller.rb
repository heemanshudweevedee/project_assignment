class Users::SessionsController < Devise::SessionsController
    skip_before_action :authenticate_user!
  
    # GET /resource/sign_in
    def new
      super
    end
  
    # # POST /resource/sign_in
    # def create
    #   if user_signed_in?
    #     if current_user.otp_module_enabled? &&
    #       !current_user.authenticate_otp(resource_params['otp_code_token'], drift: 60)
    #       sign_out current_user
    #       flash[:notice] = "Invalid OTP code"
    #       redirect_to new_user_session_path
    #     else
    #       puts "user signed in"
    #       if current_user.admin? || current_user.subadmin?
    #         puts "current_user admin or subadmin"
    #         flash[:success] = "Signed in successfully."
    #         redirect_to dashboard_index_path
    #       else
    #         puts "not admin or subadmin"
    #         sign_out current_user
    #         flash[:error] = "Access Denied......"
    #         redirect_to new_user_session_path
    #       end
    #     end
    #   else
    #     puts "Invalid username or password"
    #     flash[:danger] = "Invalid username or password"
    #     redirect_to new_user_session_path
    #   end
    # end

  
  end