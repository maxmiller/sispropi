class HomeController < ApplicationController
  before_action :set_edict, only: [:show, :edit, :update, :destroy]

  def index

  end
end