class FilmsController < ApplicationController
  PAGE_SIZE = 30

  def index
    @page = (params[:page] || 0).to_i
    @films = Film.where(user_id: current_user).order(watch_date: :desc).offset(PAGE_SIZE * @page).limit(PAGE_SIZE)
  end
end