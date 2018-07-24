module ApplicationHelper
  def login_helper(style ='')
    if !current_user.is_a?(GuestUser)
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    else
      (link_to "Register", new_user_registration_path, class: style) +
      ' '.html_safe +
      (link_to "Login", new_user_session_path, class: style)
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thank's for visiting me from #{session[:source]}, you're on #{layout_name} layout"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def set_copyright
    MachViewTool::Renderer.copyright 'Maciej Hyrycz', 'Wszelkie prawa zastrzeżone'
  end

end
