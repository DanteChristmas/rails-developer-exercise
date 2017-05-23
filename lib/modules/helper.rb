module Helper
  def printdb
    Project.all.map do | proj |
      {
        title: proj.title,
        items: proj.items.map(&:attributes)
      }
    end
  end
end
