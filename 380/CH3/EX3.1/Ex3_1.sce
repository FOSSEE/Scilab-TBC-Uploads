//Caption:Find the mass of object and energy stored in the feild
//Exa:3.1
clc;
clear;
close;
A=20*10^-4;//surface area of each  capacitor's plate 
d=5*10^-3;//separation between the plates
e=(10^-9)/(36*%pi);//permetivity of air
V=10*10^3;//potential diff. between the plates
F_e=(e*A*V^2)/(2*d^2);//electric force
g=9.81;//acceleration due to gravity (in meter/second^2)
//For condt of balancing electric force=weight of object
//F_e=m*g
m=F_e/g;
disp(m*1000,'mass of object (in grams)=');
W_f=(e*A*V^2)/(2*d);
disp(W_f*1000000,'energy stored in the feild (in micro-joules)=')