class CreateMassHealthData < ActiveRecord::Migration
  def change
    create_table :mass_health_data do |t|
      t.string :geography
      t.integer :total_population
      t.integer :age_0_19_2005
      t.integer :age_65_2005
      t.integer :per_capita_income_year_2000
      t.integer :people_living_below_poverty_2000
      t.float :per_all_persons_living_below_200_per_poverty_level_2000
      t.float :percentace_of_adquacy_prenatal_care_kote_chuck
      t.float :percentage_of_c_section_deliveries_2005_2008
      t.integer :number_of_infant_dealths_2005_2008
      t.float :infant_mortality_rate_2005_2008
      t.float :percentage_of_low_birth_weight_2005_2008
      t.float :percentage_of_multiple_births_2005_2008
      t.float :percentage_of_publicly_financed_prenatal_care_2005_2008
      t.float :percentage_of_teen_births_2005_2008
      t.timestamps
    end
  end
end