class GenresController < ApplicationController

  before_action :set_parents, only: [:index]

  def index
    @children = Genre.find(1).children
    respond_to do |format|
      format.html
      format.json
    end
  end

  private

  def set_parents
    @parents = Genre.where(ancestry: nil)
  end

end
