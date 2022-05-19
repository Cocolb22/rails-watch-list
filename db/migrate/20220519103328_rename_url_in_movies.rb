class RenameUrlInMovies < ActiveRecord::Migration[6.1]
  def change
    rename_column :movies, :url_path, :poster_url
  end
end
