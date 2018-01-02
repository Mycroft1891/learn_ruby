class Book

  attr_writer :title

  def title
    @title.capitalize!
    @title.split(' ').map {|s| @@c.include?(s) ? s : s.capitalize }.join(' ')
  end

  private
    @@c = ['and', 'in', 'the', 'of', 'a', 'an']
end
