module ApplicationHelper
  def sortable(column,title=nil)
    title ||= column.titleize
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, :sort => column, :direction => direction
  end
end
def nav_link_to(link_text, link_path)
  class_name = current_page?(link_path) ? 'active' : ''
  content_tag(:li, :class => class_name) do
    link_to link_text, link_path
  end
end