class PasswordResetsController < ApplicationController
  def new
  end

  def create
    @utilisateur = Utilisateur.find_by(email: params[:password_reset][:email].downcase)
    if @utilisateur
      @utilisateur.create_reset_digest
      @utlisateur.send_password_reset_email
      flash[:info]= "Un email a été envoyé avec les instructions pour récupérer votre mot de passe."
      redirect_to_root_url
    else
      flash.now[:danger] = "Adresse email non trouvée"
      render "new"
    end
  end

  def edit
  end
end
