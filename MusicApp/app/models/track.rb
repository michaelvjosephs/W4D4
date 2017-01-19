# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  album_id   :integer          not null
#  ord        :integer
#  lyrics     :text
#  track_type :string
#

class Track < ActiveRecord::Base
  validates :name, :album_id, :lyrics, :track_type, presence: true
  validates :ord, presence: true, uniqueness: { scope: :album,
    message: "should only appear once on album" }

  belongs_to :album,
    class_name: :Album,
    primary_key: :id,
    foreign_key: :album_id
end
