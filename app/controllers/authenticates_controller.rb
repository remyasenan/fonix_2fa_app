class AuthenticatesController < ApplicationController


  def index
    @mobile_number = params[:mobile_number]
    # @token = TokenGenerator.generate

    if params[:token_generated] && params[:token] && params[:token_generated] == params[:token]
      redirect_to authenticates_success_path
    else
      render authenticates_index_path, flash: {error: 'Wrong token entered!!!'}
    end
  end

  def token
    @token_generated = TokenGenerator.generate
    SmsSender.zensend_send_sms(@token_generated,params[:mobile_number])

  end

  def success

  end


end
