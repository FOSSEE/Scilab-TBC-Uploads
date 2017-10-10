//Example 23.3
N=200;//Number of loops
delta_t=15*10^-3;//Time (s)
r=5*10^-2;//Radius of coil (m)
A=%pi*r^2;//Area of loop (m^2)
B=1.25;//Magnetic field strength (T)
delta_cosTheta=cosd(90)-cosd(0);//Change in value of cos(theta), as theta varies from 0 deg to 90 deg
delta_phi=A*B*delta_cosTheta;//Change in magnetic flux (T.m^2)
emf=-N*delta_phi/delta_t;//Induced emf (V)
printf('Induced emf = %0.1f V',emf)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
