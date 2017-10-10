//Example 23.1
N=1;//Number of loops
r=6*10^-2;//Radius of coil (m)
A=%pi*r^2;//Area of loop (m^2)
delta_BcosTheta=0.250-0.05;//Change in value of magnetic field strength perpendicular to area (T)
delta_phi=A*delta_BcosTheta;//Change in magnetic flux (T.m^2)
delta_t=0.1;//Time (s)
Emf=N*delta_phi/delta_t;//Induced emf (V)
printf('Induced emf = %0.1f mV',Emf*1000)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
