TextualMultilink = Struct.new(:title, :options) do
  def template
    'shared/summary/textual_multilink'
  end

  def locals
    options.merge(:title => self.title)
  end
end
