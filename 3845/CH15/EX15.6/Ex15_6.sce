//Example 15.6
Tc=250;//Cold reservoir temperature (K)
Th=600;//Hot reservoir temperature (K)
Q_h=4000;//Heat transfer from hot reservoir (J)
Q_c=4000;//Heat transfer to cold reservoir (J)
delta_S_h=-Q_h/Th;//Entropy change for hot reservoir (J/K)
delta_S_c=Q_c/Tc;//Entropy change for cold reservoir (J/K)
delta_S_tot=delta_S_h+delta_S_c;//Total entropy change (J/K)
printf('Total change in entropy = %0.2f J/K',delta_S_tot)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
