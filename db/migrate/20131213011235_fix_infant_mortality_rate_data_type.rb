class FixInfantMortalityRateDataType < ActiveRecord::Migration
  def up
    add_column :mass_health_data, :infant_mortality_rate_2005_2008, :float
  end

   def down
    remove_column :mass_health_data, :infant_mortality_rate_2005_2008
  end
  
end
