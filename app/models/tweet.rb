class Tweet < ApplicationRecord
  belongs_to :usuario
  before_save :set_default
  before_validation :set_default_user

  def set_default
  	if self.contenido == nil?
  		self.contenido = "Sin contenido"
  	end
  end

  def set_default_user
  	if !self.usuario.present?
  		user = Usuario.find_or_create_by(name:"bot")
  		self.usuario =  user
  	end
  end


end
