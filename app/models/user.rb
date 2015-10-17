# class User < ActiveRecord::Base
#
#   def self.create_with_omniauth(auth)
#     create! do |user|
#       user.provider = auth['provider']
#       user.uid = auth['uid']
#       if auth['info']
#         user.name = auth['info']['name'] || ""
#         user.email = auth['info']['email'] || ""
#       end
#     end
#   end
#
# end

class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end
