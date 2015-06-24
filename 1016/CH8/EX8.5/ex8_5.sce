clc;clear;
//Example 8.5

//given data
V=30000;//potential difference in V
Wmin=0.414*10^-10;//short wavelength limit in m
e=1.602*10^-19;//the charge on electron in C
c=3*10^8;//speed of light in m/s

//calcualtions
h=(e*V*Wmin)/c;
disp(h,'The Plancks const in Js')