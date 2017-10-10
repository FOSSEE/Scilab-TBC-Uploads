//Example 28.8
m=9.11*10^-31;//Mass of the electron (kg)
c=3*10^8;//Speed of light (m/s)
v=0.990*c;//Velocity of the electron (m/s)
Gamma=1/sqrt(1-v^2/c^2);
KE_rel=(Gamma-1)*m*c^2;//Relativistic kinetic energy (J)
KE_rel=KE_rel*1/(1.60*10^-13);//Relativistic kinetic energy (MeV)
printf('a.Relativistic kinetic energy = %0.2f MeV',KE_rel)
KE_class=(1/2)*m*v^2;//Classical kinetic energy (J)
KE_class=KE_class*1/(1.60*10^-13);//Classical kinetic energy (MeV)
printf('\nb.Classical kinetic energy = %0.3f MeV',KE_class)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
