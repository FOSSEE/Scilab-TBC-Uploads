clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 8.2   Page 499 \n'); //Example 8.2
// Length of tube needed to achieve the desired outlet temperature
//Local convection coefficient at the outlet

//Operating Conditions
m = .1;            //[kg/s] mass flow rate of water
Ti = 20+273;       //[K] Inlet temp
To = 60+273;       //[K] Outlet temperature
Di = .02;          //[m] Inner Diameter
Do = .04;          //[m] Outer Diameter
q = 10^6;          //[w/m^3]  Heat generation Rate
Tsi = 70+273;      //[K] Inner Surface Temp
//Table A.4 Air Properties T = 313 K
cp = 4179;          //[J/kg.K] specific heat

L = 4*m*cp*(To-Ti)/(%pi*(Do^2-Di^2)*q);

//From Newtons Law of cooling, Equation 8.27, local heat convection coefficient is
h = q*(Do^2-Di^2)/(Di*4*(Tsi-To));

printf("\n Length of tube needed to achieve the desired outlet temperature = %.1f m \n Local convection coefficient at the outlet = %i W/m^2.K",L,h);

//END