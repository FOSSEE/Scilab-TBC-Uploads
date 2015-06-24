clc;
clear;

printf("\n Example 6.2\n");
rho_sul=1300;//Density of sulphuric acid
printf("\n Given:\n Density of sulphuric acid = %d kg/ m^3",rho_sul);
id=50e-3;//Internal diameter of pipe
printf("\n Internal diameter of pipe = %d mm",id*1e3);
d_o=10e-3;//Diameter of orifice
printf("\n Diameter of orifice = %d mm",d_o*1e3);
h=.1;//Differential pressure shown on a mercury manometer
printf("\n Differential pressure shown on a mercury manometer = %.1f m",h);
Cd=0.61//Coeffecient of discharge
printf("\n Coeffecient of discharge = %.2f",Cd);
rho_merc=13550;//Density of mercury
printf("\n Density of mercury = %d kg/m^3",rho_merc);
rho_watr=1000;//Density of water
printf("\n Density of water = %d kg/m^3",rho_watr);
printf("\n\n Calculations:\n (a)");
area_o=%pi/4*d_o^2;//area of orifice
//The differential pressure is given by:
h_sul=h*(rho_merc-rho_sul)/rho_sul;//
//The mass flow-rate G is given by:
//substituting in equation 6.21 gives the mass flowrate as:
G_sul=Cd*area_o*rho_sul*(2*9.81*h_sul)^0.5;
printf("\n The mass flow rate of acid = %.3f kg/s\n (b)",G_sul);
DP=rho_sul*9.81*h_sul;
printf("\n The drop in pressure = %.0f kN/m^2",DP*1e-3);