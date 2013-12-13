# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#wipes your data before you re-seed your db
require 'csv'

state_data = 'db/data/mass_health_data.csv'

CSV.foreach(state_data, headers: true,) do |row|
  row.each do |word|
      if !word[1].nil? && (word[1].include?(',') || word[1].include?('$'))
        word[1] = word[1].gsub(/[$,' ']/,'')
    end
  end

  MassHealthData.find_or_create_by(
    geography: row[0],
    total_population: row[1].to_i,
    age_0_19_2005: row[2].to_i,
    age_65_2005: row[3].to_i,
    per_capita_income_year_2000: row[4].to_i,
    people_living_below_poverty_2000: row[5].to_f,
    pct_all_persons_living_below_200_per_poverty_level_2000: row[6].to_f,
    percentace_of_adquacy_prenatal_care_kote_chuck: row[7].to_f,
    percentage_of_c_section_deliveries_2005_2008: row[8].to_f,
    number_of_infant_dealths_2005_2008: row[9].to_f,
    infant_mortality_rate_2005_2008: row[10].to_f,
    percentage_of_low_birth_weight_2005_2008: row[11].to_f,
    percentage_of_multiple_births_2005_2008: row[12].to_f,
    percentage_of_publicly_financed_prenatal_care_2005_2008: row[13].to_f,
    percentage_of_teen_births_2005_2008: row[14].to_f)
end