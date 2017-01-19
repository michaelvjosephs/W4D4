# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  band_id    :integer          not null
#  album_type :string
#  year       :integer
#

class Album < ActiveRecord::Base
  validates :name, presence: true
  validates :band_id, presence: true
  validates :album_type, presence: true
  validates :year, presence: true

  belongs_to :band,
    class_name: :Band,
    primary_key: :id,
    foreign_key: :band_id

  has_many :tracks,
    class_name: :Track,
    primary_key: :id,
    foreign_key: :album_id,
    dependent: :destroy
end
