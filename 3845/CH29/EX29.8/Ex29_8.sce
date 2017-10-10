//Example 29.8
delta_x=0.01*10^-9;//Uncertainty in position (m)
h=6.63*10^-34;//Planck's constant (J.s)
delta_p=h/(4*%pi*delta_x);//Uncertainty in momentum (kg.m/s)
m=9.11*10^-31;//Mass of an electron (kg)
delta_v=delta_p/m;//Uncertainty in velocity (m/s)
printf('a.Electron''s uncertainty in velocity = %0.2e m/s',delta_v)
KE_e=(1/2)*m*delta_v^2;//Kinetic energy of electron (J)
KE_e=KE_e*1/(1.60*10^-19);//Kinetic energy of electron(eV)
printf('\nb.Kinetic energy of electron = %0.1f eV',KE_e)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
