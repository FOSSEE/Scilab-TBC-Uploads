clc();
clear;
// To find the temperature at center of sphere on sudden temperature change
d = 16/12;                // Diameter of sphere in ft
t = 20/60;                // Time elapsed in hr
a = 0.31;                 // thermal diffusivity of steel in ft^2/hr
Ti = 80;                  // Temperature of steel sphere initially in degF
Ts = 1200;                 // Temperature of surface suddenly changed in degF
s = 4*a*t/d^2;            // A parameter 
// From table the value of F(s) can be known 
Fs=0.20;              
Tc = Ts+(Ti-Ts)*Fs;       // Tempearture at the center of sphere in degF
printf("The tempearture at the center of steel sphere after 20 mins is %d degF",Tc);  