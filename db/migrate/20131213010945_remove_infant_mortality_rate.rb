class RemoveInfantMortalityRate < ActiveRecord::Migration
  def up
    remove_column :mass_health_data, :infant_mortality_rate_2005_2008
  end

  def down
    add_column :mass_health_data, :infant_mortality_rate_2005_2008
  end
end
