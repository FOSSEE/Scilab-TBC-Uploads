clc;funcprot(0);//Example 9.5
//Initilisation of Variables
T=3000;....//Temparature of filament in a bulb in K
L1=0.4*10^-6;....//First Visible range of Wavelength in Mew m
L2=0.7*10^-6;....//Last Visible range of Wavelength in Mew m
R=5.67*10^-8;.....//Stefens boltsman constant 
//calculations
L1T=L1*T;....//
L2T=L2*T;...//
F1=0.002;......//The radiation funtions for L1T from blackbody radiation table
F2=0.085;......//The radiation funtions for L2T from blackbody radiation table
E=R*T^4*(F2-F1);....//Radiation energy that falls the visible range in W/m^2
disp(E,"Radiation energy that falls the visible range in W/m^2:")
