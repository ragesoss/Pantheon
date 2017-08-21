class User < ApplicationRecord
  devise :rememberable, :omniauthable, omniauth_providers: [:mediawiki]
end
