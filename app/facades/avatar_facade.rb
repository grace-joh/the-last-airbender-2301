class AvatarFacade
  def members_by_nation(nation)
    @_members_by_nation ||= search_by_nation(nation).map do |member|
      Member.new(member)
    end
  end

  private

  def search_by_nation(nation)
    @_result ||= service.search_by_nation(nation)
  end

  def service
    @_service ||= AvatarService.new
  end
end
