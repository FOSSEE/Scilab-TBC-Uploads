//Example 3_1
clc;
clear;close;

//Given data: 
R=80;//ohm
L=8;///mH
C=1.2;// micro F

//Solution :
if R^2<4*(L*10^-3)/(C*10^-6) then
    disp("As R^2<4*L/C, Circuit will work as a series inverter.");
else
    disp("As R^2>4*L/C, Circuit will not work as a series inverter.");
end
omega_m=sqrt(1/(L*10^-3*C*10^-6)-R^2/4/(L*10^-3)^2);//rad/s
fm=omega_m/2/%pi;//Hz
disp(fm,"Maximum frequency in Hz : ");
