//clear//
//Caption: Calculation of Lateral power distribution coefficient
//Example5.1
//page192
clear;
clc;
close;
phi = 0; //lateral coordinate
Half_power = 10; //half power beam width
teta = Half_power/2;
teta_rad = teta/57.3;
L = log(0.5)/log(cos(teta_rad));
disp(L,'Lateral power distribution coefficient L=')
//Result
//Lateral power distribution coefficient L = 181.83303  
