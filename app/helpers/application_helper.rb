module ApplicationHelper
   # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "RoR Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
  
  def stars ( num_stars )
    return ((image_tag "star 1.gif") * num_stars).html_safe
  end  
  
  def is_admin?
    return current_user.try(:admin?)
  end
  
end
