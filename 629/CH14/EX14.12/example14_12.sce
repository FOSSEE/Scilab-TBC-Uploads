clear
clc
//Example 14.12 CAPTURE AREA OF WIND TURBINE
Pmax=5*100; //power produced by turbine[W]
V=20*(1000/3600) //wind velocity [m/s]
rho=1.2; //density [Kg/m^3]
//Minimum capture area
Amin=Pmax*(54/16)/(rho*V^3) //[m^2]
printf("\nThe minimum capture area of wind turbine = %.2f m^2.\n",Amin)