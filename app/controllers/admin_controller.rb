# encoding: utf-8
class AdminController < ApplicationController

  # Autenticação básica, só pra começar - Para todos os métodos deste controller
  http_basic_authenticate_with :name => "admin123", :password => "admin123"
  
  # GET /admin
  def index
  end

end
