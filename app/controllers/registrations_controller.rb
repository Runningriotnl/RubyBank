class RegistrationsController < Devise::RegistrationsController

	private

	def sign_up_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation, :balance)
	end

	def update_account_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password, :balance)
	end

end