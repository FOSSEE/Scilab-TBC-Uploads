//Example 33.1
d=10^-15;//Range of the strong nuclear force (m)
c=3.0*10^8;//Speed of light (m/s)
delta_t=d/c;//Time during which the pion exists (s)
h=6.63*10^-34;//Planck's constant (J.s)
delta_E=h/(4*%pi*delta_t);//Energy uncertainity from  Heisenberg uncertainty principle (J)
delta_E=delta_E*1/(1.6*10^-13)//Energy uncertainity (MeV),delta_E=delta_E*1MeV/(1.6*10^-13J)
//Mass of pion m=delta_E/c^2
m=delta_E;//Mass of pion (MeV/c^2)
printf('Mass of the pion = %0.1f MeV/c^2',m)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
