class UpdateAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :album_type, :string
    add_column :albums, :year, :integer

    add_column :tracks, :ord, :integer
    add_column :tracks, :lyrics, :text
    add_column :tracks, :track_type, :string
  end
end
