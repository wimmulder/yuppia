class User < ActiveRecord::Base

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info'] && auth['credentials']
        user.name = auth['info']['name'] || ""
        user.email = auth['info']['email'] || ""
        user.oauth_token = auth['credentials']['token'] || ""
        user.oauth_expires_at = Time.at(auth['credentials']['expires_at']) || ""
      end
    end
  end

end
