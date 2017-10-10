clear
clc
//Example 9.7 RESISTANCE FORCE WITH TRIPPED BOUNDARY LAYER
L=6; //[m]
B=3; //[m]
mu=1.81*10^-5; //[N.s/m^2]
rho=1.2; //[Kg/m^3]
Uo=20; //[m/s]
ReL=rho*Uo*L/mu //Reynold's number
//Average shear-stress coefficient
Cf=0.032/ReL^(1/7)
A=L*B //area [m^2]
//Resistance force
Fs=2*Cf*A*rho*(Uo^2)/2 //[N]
printf("\nTotal shear resistance on both sides of plate = %.1f N.\n",Fs)