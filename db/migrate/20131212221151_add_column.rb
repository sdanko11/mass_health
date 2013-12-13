class AddColumn < ActiveRecord::Migration
  def up
    add_column :mass_health_data, :per_all_persons_living_below_200_per_poverty_level_2000, :float
  end

  def down
    remove_column :mass_health_data, :per_all_persons_living_below_200_per_poverty_level_2000
  end

end
