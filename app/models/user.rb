class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
         
  # サムネイル画像にCarrierWaveで作成したUserThumbnailUploaderを使用
  mount_uploader :thumbnail, UserThumbnailUploader
  
  # バリデーションを設定/nameの入力は必須/agreementの入力は必須でtrueであること
  validates :name,      presence: true
  validates :agreement, presence: true, acceptance: {accept: true}
end
