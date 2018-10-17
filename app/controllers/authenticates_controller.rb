class AuthenticatesController < ApplicationController


  def index
    @mobile_number = params[:mobile_number]
    # @token = TokenGenerator.generate

    if params[:token_generated] && params[:token] && params[:token_generated] == params[:token]
      redirect_to authenticates_success_path, flash: {success: 'Some message.'}
    else
      render authenticates_index_path
    end
    p "ttttttttttttttttttttttttttttttttttttttttttt"
    p params[:token_generated]
    p params[:token]
    # redirect_to :action => token
  end

  def token
    @token_generated = TokenGenerator.generate
  # SmsSender.zensend_send_sms(verification_token,params[:mobile_number])

  end

  def success

  end


end
