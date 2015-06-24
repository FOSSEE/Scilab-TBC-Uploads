//Exa 4.9
clc;
clear;
close;
//given data
rho=8500;// in kg/m^3
C=400;// J/kgK
toh=1;// in sec
h= 400;// in W/m^2 degree C
t=198;// in degree C
t_i=25;// in degree C
t_infinite=200;// in degree C

// Part (1)
// toh =rho*V*C/(h*A) = rho*C*l_s/h
l_s= toh*h/(rho*C);
// l_s = V/A = r/3 
r=3*l_s;// in m
r=r*10^3;// in mm
d=2*r;// in m
disp(d,"Junction diameter needed for the thermocouple in mili miter");

// Part(ii)
// toh= -rho*V*C/(h*A)*log((t-t_infinite)/(t_i-t_infinite))  
toh = -toh*log((t-t_infinite)/(t_i-t_infinite));
disp(toh,"Time required for the thermocouple junction to reach 198 degree C in seconds");
