class PagesController < ApplicationController
  def index
  end

  def home
  end

  def profile
    # grab username from the url as :id
    @username = params[:id]
  end

  def explore
  end
end
