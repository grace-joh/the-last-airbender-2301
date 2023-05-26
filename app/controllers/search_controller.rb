class SearchController < ApplicationController
  def index
    @members = AvatarFacade.new.members_by_nation(search_params[:nation])
  end

  private

  def search_params
    params.permit(:nation)
  end
end
