# What 3 towns have the highest population of citizens that are 65 years and older?
MassHealthData.order("age_65_2005 DESC").select("geography").first(3)

MassHealthData.where.not(geography: "Massachusetts Total").order("age_65_2005 DESC").select("geography").first(3)

# What 3 towns have the highest population of citizens that are 19 years and younger?

MassHealthData.where.not(geography: "Massachusetts Total").order("age_0_19_2005 DESC").select("geography").first(3)

# What 5 towns have the lowest per capita income?

MassHealthData.where.not(geography: "Massachusetts Total").order("per_capita_income_year_2000").select("geography").first(5)

# Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?

MassHealthData.where.not(geography: "Boston, Becket, Beverly").order("percentage_of_teen_births_2005_2008 DESC").select("geography").first(1)

# Omitting Boston, what town has the highest number of infant mortalities?

MassHealthData.where.not(geography: "Massachusetts Total, Boston").order("infant_mortality_rate_2005_2008 DESC").select("geography").first(1)