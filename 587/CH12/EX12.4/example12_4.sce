clear;
clc;

//Example12.4[Emissivity of a surface and emissive Power]
e1=0.3;//For 0<= lambda <= 3micron 
e2=0.8;//3micron<=lambda<=7micron
e3=0.1;//7micron<=lamda<infinity
lambda1=3,lambda2=7;//[micron]
T=800;//[K]
//Solution:-
p=lambda1*T;//[micron.K]
q=lambda2*T;//[micron.K]
//Hence blackbody radiation functions are
f1=0.140256;
f2=0.701046;
f0_1=f1-0;
f2_inf=1-f2;
e_T=e1*f1+e2*(f2-f1)+e3*(1-f2);
disp(e_T,"Average emissivity of the surface is")
E=e_T*(5.67*10^(-8))*(T^4);//[W/m^2]
disp("W/m^2",E,"The Emissive Power of the surface is")
