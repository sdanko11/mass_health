class RemoveRows < ActiveRecord::Migration
   def up
    remove_column :mass_health_data, :per_all_persons_living_below_200_per_poverty_level_2000
    remove_column :mass_health_data, :all_persons_living_below_200_per_poverty_level_2000
  end

  def down
    add_column :mass_health_data, :per_all_persons_living_below_200_per_poverty_level_2000
    add_column :mass_health_data, :all_persons_living_below_200_per_poverty_level_2000
  end
end
