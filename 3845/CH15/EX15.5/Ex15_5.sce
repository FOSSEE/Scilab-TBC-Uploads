//Example 15.5
Tc=-15;//Cold reservoir temperature (C)
Tc=Tc+273;//Cold reservoir temperature (K)
Th=45;//Hot reservoir temperature (C)
Th=Th+273;//Hot reservoir temperature (K)
Eff_C=1-Tc/Th;//Carnot efficiency
COP_hp=1/Eff_C;//Coefficient of performance of the heat pump
printf('Coefficient of performance for the heat pump = %0.2f',COP_hp)
printf('\nHeat transfer Q_h is %0.2f times the work input W',COP_hp)
//Since COP_hp=Q_h/W
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
