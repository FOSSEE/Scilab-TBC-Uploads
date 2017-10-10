//Example 17.7
rho=925;//Density of fat tissue (kg/m^3), See Table 17.5
v=1450;//Speed of ultrasound (m/s), See Table 17.5
Z=rho*v;//Acoustic impedance of fat tissue (kg/(m^2.s)), 
printf('a.Acoustic impedance of fat tissue = %0.2e kg/(m^2.s)',Z)
Z1=1.70*10^6;//Acoustic impedance of muscle (kg/(m^2.s)), See Table 17.5
Z2=Z;//Acoustic impedance of fat tissue (kg/(m^2.s))
a=(Z2-Z1)^2/(Z1+Z2)^2;//Intensity reflection coefficient
printf('\nb.Intensity reflection coefficient = %0.3f',a)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
