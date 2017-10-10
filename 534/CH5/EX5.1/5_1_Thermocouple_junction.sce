clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 5.1   Page 261 \n'); //Example 5.1
// Junction Diameter and Time Calculation to attain certain temp

//Operating Conditions

h = 400;          //[W/m^2.K] Heat Convection coefficient
k = 20;         //[W/m.K] Thermal Conductivity of Blade
c = 400;        //[J/kg.K] Specific Heat
rho = 8500;      //[kg/m^3] Density
Ti = 25+273;        //[K] Temp of Air
Tsurr = 200+273;     //[K] Temp of Gas Stream
TimeConstt = 1;      //[sec]

//From Eqn 5.7
D = 6*h*TimeConstt/(rho*c);
Lc = D/6;
Bi = h*Lc/k;

//From eqn 5.5 for time to reach 
T = 199+273;    //[K] Required temperature

t = rho*D*c*2.30*log10((Ti-Tsurr)/(T-Tsurr))/(h*6);

printf("\n\n Junction Diameter needed for a time constant of 1 s = %.2e m \n\n Time Required to reach 199degC in a gas stream = %.1f sec ", D, t);
//END