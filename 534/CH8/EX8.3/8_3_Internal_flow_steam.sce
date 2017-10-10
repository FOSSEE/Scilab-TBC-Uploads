clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 8.3   Page 503 \n'); //Example 8.3
// average convection coefficient 

//Operating Conditions
m = .25;            //[kg/s] mass flow rate of water
Ti = 15+273;       //[K] Inlet temp
To = 57+273;       //[K] Outlet temperature
D = .05;          //[m] Diameter
L = 6;          //[m] Length of tube
Ts = 100+273;      //[K] outer Surface Temp

//Table A.4 Air Properties T = 309 K
cp = 4178;          //[J/kg.K] specific heat

Tlm = ((Ts-To)-(Ts-Ti))/(2.30*log10((100-57)/(100-15)));

h = m*cp*(To-Ti)/(%pi*D*L*Tlm);

printf("\n Average Heat transfer Convection Coefficient = %i W/m^2.K",h);

//END