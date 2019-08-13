class AccountActivationsController < ApplicationController
    def edit
        utilisateur = Utilisateur.find_by(email: params[:email])
        if utilisateur && !utilisateur.activated? && utilisateur.authenticated?(:acitvation, params[:id])
            utilisateur.activate
            log_in user
            flash[:success] = "Compte activé!"
            redirect_to utilisateur
        else
            flash[:danger] = "Lien d'activation invalide"
            redirect_to root_url
        end
    end
end