# == Schema Information
#
# Table name: bands
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime
#  updated_at :datetime
#

class Band < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :albums,
    class_name: :Album,
    primary_key: :id,
    foreign_key: :band_id,
    dependent: :destroy

  has_many :tracks,
    through: :albums,
    source: :album,
    dependent: :destroy
end
