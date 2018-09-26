class ContactForm

  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :phone, :subject, :content

  validates :name, :email, :content,
            presence: true

  validates :name,
            length: {minimum: 3,
                     maximum: 128}

  validates :email,
            format: {with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i}

end
