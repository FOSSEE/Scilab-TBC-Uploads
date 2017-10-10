clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 5.6   Page 288 \n'); //Example 5.6
// Burial Depth

//Operating Conditions

k = .52;         //[W/m.K] Thermal Conductivity 
rho = 2050;        //[kg/m^3] Density
c = 1840;            //[J/kg.K]  Specific Heat
Ti = 20+273;        //[K] Initial Temp
Ts = -15+273;     //[K] Temp of surrounding
T = 0+273;        //[K] Temp at depth xm after 60 days
t = 60*24*3600;        //[sec] time perod

alpha = k/(rho*c);            //[m^2/s]
//Using eqn 5.57
xm = erfinv((T-Ts)/(Ti-Ts))*2*(alpha*t)^.5;

printf("\n Depth at which after 60 days soil freeze = %.2f m",xm);

//END