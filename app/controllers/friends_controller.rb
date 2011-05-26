class FriendsController < ApplicationController
  def notfollowing
    @user = client.user if signed_in?
    prof = Account.where("user_id = ?", @user.id_str)
    i = 0
    prof.each do |p|
      acct = Account.where("screen_name = ?", p.screen_name)
      if i<10 and acct.first.follows.nil?
      friend = Twitter.friendship_exists? p.screen_name, @user.screen_name
      if friend
        acct.first.follows = true
        acct.first.save
      else
        acct.first.follows = false
        acct.first.save
      end
      sleep 1
      i = i + 1
      end
    end
  end

  def unfriend
    Twitter.friendship_destroy(params[:id])
    flash[:notice] = "Unfriended #{params[:id]}"
    sleep 2
    Twitter.friendship_create(params[:id])
    flash[:notice] = "refriended #{params[:id]}"
    redirect_to new_session_path
  end
end
