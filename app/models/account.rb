class Account < ActiveRecord::Base
  def self.create_profile(profile_id, uid)
  create! do |account|
    u = Twitter.user(profile_id)
    account.screen_name = u.screen_name
    account.location = u.location
    account.pic_url = u.profile_image_url
    account.twitter_id = u.id_str
    account.friended_at = '1-1-2000'
    account.user_id = uid
  end
  end
end
