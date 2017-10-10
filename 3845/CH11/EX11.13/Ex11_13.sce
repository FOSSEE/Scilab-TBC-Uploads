//Example 11.13
F=3;//Force (N)
A=1*(10^-2)^2;//Are of eardrum (m^2)
P_g=F/A;//Pressure (N/m^2)
P_g1=P_g*1/133;//Pressure (mm Hg)
printf('a.Maximum tolerable gauge pressure = %0.2e N/m^2 or %0.1f mm Hg',P_g,P_g1)
rho=1*10^3;//Density of water (kg/m^3)
g=9.80;//Acceleration due to gravity (m/s^2)
h=P_g/(rho*g);//Depth of water (m)
printf('\nb.Depth of water = %0.2f m',h)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
