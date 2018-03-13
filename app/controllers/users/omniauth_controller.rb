class Users::OmniauthController < ApplicationController
  # twitter callback
  def twitter
    @user = User.create_from_provider_data(request.env['omniauth.auth'])
    if @user.persisted?
      sign_in_and_redirect @user#, event: :authentication
      flash[:success] if is_navigational_format?
    else
      flash[:error] = 'There was a hiccup signing you in through Twitter. Please
                      register or try signing in later.'
      redirect_to new_user_registration_url
    end
  end

  # fallback for the callback...
  def failure
    flash[:error] = "Yikes! There was a problem signing you in. Please register
                    or try signing in later."
    redirect_to new_user_registration_url
  end
end
