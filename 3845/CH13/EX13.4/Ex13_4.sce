//Example 13.4
beta_s=35*10^-6;//Coefficient of volume expansion of steel (C^-1)
beta_gas=950*10^-6;//Coefficient of volume expansion of gasoline (C^-1)
V=60;//Volume of tank (L)
delta_T=35-15;//Change in temperature (C)
V_spill=(beta_gas-beta_s)*V*delta_T;//Volume of gasoline spilled (See textbook for derivation) (L)
printf('Volume of gasoline spilled = %0.2f L',V_spill)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
