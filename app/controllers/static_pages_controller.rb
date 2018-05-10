class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      # if params[:search]
      #   @feed_items = Micropost.where("microposts.content LIKE :search", search: "%#{params[:search]}%").paginate(page: params[:page])
      # else
      #   @feed_items = current_user.feed.paginate(page: params[:page])
      # end
      @feed_items = Micropost.search(params[:search]).paginate(page: params[:page])
    end
  end

  def help
  end

  def about
    # 'app/views/static_pages/about.html.erb'
  end

  def contact
    # app/views/static_pages/contact.html.erb'
  end
end
