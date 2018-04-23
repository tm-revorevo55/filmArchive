module ApplicationHelper
  def document_title
    if @title.present?
      "#{@title} - FilmArchive"
    else
      'FilmArchive'
    end
  end

end
