//Example 18.1
r=0.530*10^-10;//Separation (m)
k=8.99*10^9;//Coulomb's constant (N.m^2/C^2)
q1=-1.60*10^-19;//Charge of electron (C)
q2=1.60*10^-19;//Charge of proton (C)
F=k*abs(q1*q2)/r^2;//Coulomb force (N)
printf('Electrostatic force = %0.2e N',F)
G=6.67*10^-11;//Gravitational constant (N.m^2/kg^2)
m=9.11*10^-31;//Electron mass (kg)
M=1.67*10^-27;//Proton mass (kg)
F_G=G*m*M/r^2;//Gravitational force (N)
printf('\nGravitational force = %0.2e N',F_G)
printf('\nRatio of electrostatic force to gravitational force = %0.2e',F/F_G)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
