class LinkHandler
  def self.call(link)
    data = link.split('/')

    data[1].empty? ? data[2] : data[0]
  end
end
