# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  fname           :string           not null
#  lname           :string           not null
#  username        :string
#  email           :string           not null
#  age             :integer          not null
#  gender          :string           not null
#  languages       :text             default([]), not null, is an Array
#  occupation      :string           not null
#  education       :text             default([]), not null, is an Array
#  about_me        :text             not null
#  location_id     :integer          not null
#  imageable_type  :string
#  imageable_id    :bigint
#  reviewable_type :string
#  reviewable_id   :bigint
#  friendable_type :string
#  friendable_id   :bigint
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord

  attr_reader :password

  validates :fname, :lname, :email,  :password_digest, :session_token, 
  :age, :gender, :languages, :occupation, :education, :about_me, presence: true

  validates :password, length: { minimum: 8 }, allow_nil: true

  after_initialize :ensure_session_token


  def password=(pw)
    self.password_digest = BCrypt::Password.create(password)
  end
  
  def is_password?(pw)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end
  
  def self.find_by_credentials(email, username = nil, pw)
    user = User.find_by(username: username) || user = User.find_by(email: email)
    return nil unless user.is_password?(pw)
    user

  end
  
  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64(16)
    self.save!
    self.session_token
  end
  private

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end 
end
