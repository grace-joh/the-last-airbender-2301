class Member
  attr_reader :name, :photo_url, :allies, :enemies, :affiliation
  def initialize(data)
    @name = data[:name]
    @photo_url = data[:photoUrl]
    @allies = data[:allies].join(', ')
    @enemies = data[:enemies].join(', ')
    @affiliation = data[:affiliation]
  end
end
