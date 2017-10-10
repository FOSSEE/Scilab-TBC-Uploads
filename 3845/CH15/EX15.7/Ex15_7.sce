//Example 15.7
Tc=100;//Cold reservoir temperature (K)
Th=600;//Hot reservoir temperature (K)
Q_h=4000;//Heat transfer to the engine (J)
Eff_C=1-Tc/Th;//Carnot efficiency
W=Eff_C*Q_h;//Work output (J)
printf('a.Work output = %0.1f J',W)
Tc_b=250;//Cold reservoir temperature for 1st Carnot engine in (b), (K)
Eff_C_b=1-Tc/Tc_b;//Carnot efficiency
W_b=Eff_C_b*Q_h;//Work output (J)
printf('\nb.Work output = %0.1f J',W_b)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
