//ques4
//Volume expansivity, Isothermal and Adiabatic compressibility
clear
clc
//known data
ap=5*10^-5;//K^-1 Volume expansivity
bt=8.6*10^-12;//m^2/N, Isothermal compressibility
v=0.000114;//m^3/kg, specific volume
P2=100*10^6;//pressure at state 2 in kPa
P1=100;//pressure at state 1 in kPa
w=-v*bt*(P2^2-P1^2)/2;//work done in J/kg
//q=T*ds and ds=-v*ap*(P2-P1)
//so q=-T*v*ap*(P2-P1)
T=288.2;//Temperature in K
q=-T*v*ap*(P2-P1);//heat in J/kg
du=q-w;//change in internal energy in J/kg
printf('Change in internal energy = %.1f J/kg ',du);
 