class ContactController < ApplicationController
  protect_from_forgery only: [:deliver]

  def show
  end

  def deliver
    @model = ContactForm.new(contact_params)
    if verify_recaptcha(model: @model)
      if @model.valid?
        if ContactMailer.contact_form(@model).deliver
          flash[:notice] = 'Сообщение отправлено...'
        else
          flash[:alert] = 'Ошибка отправки сообщения...'
        end
      else
        flash[:alert] = 'Ошибка создания сообщения...'
      end
    else
      flash[:alert] = 'Ошибка reCAPTCHA...'
    end
    redirect_back fallback_location: contact_path
  end

  private

  def contact_params
    params.require(:contact).permit :name, :email, :phone, :subject, :content
  end
end
