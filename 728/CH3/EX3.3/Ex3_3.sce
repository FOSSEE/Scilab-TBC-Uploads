//Caption:Calculate phase velocity of the wave that propogates on line as given in example 3.2
//Exa:3.3
clc;
clear;
close;
w=4*%pi*10^3;//in rad/sec
b=0.02543;//in rad/km
V_p=w/b;// phase velocity
disp(V_p,"Phase velocity (in km/sec) =");