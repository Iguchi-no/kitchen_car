class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    case resource
    when Owner
      owner_posts_path
    when Employee
      welcome_index_path
    end
  end
end
