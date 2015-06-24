//Exa 2.5
clc;
clear;
close;

pf=0.9;//power factor
disp("Three wire dc system : ");
disp("P1=2*I1*V & %P1loss=2*I1^2*R/(2*I1*V)*100=100*I1*R/V");
disp("Three phase 4-wire ac system : ");
disp("P2=3*I1^2*V*pf & %P2loss=3*I2^2*R/(3*I2*V*pf)*100=100*I12*R/pf/V");
//on equating P1loss=P2loss;
I2BYI1=100*pf/100;//ratio
//P2=3*I2*V*pf
P2BYI1V=3*pf*I2BYI1;
P2BYP1=P2BYI1V/2;
//LoadIncrease=(P2-P1)*100/P1;
LoadIncrease=(P2BYP1-1)*100;//%
disp(LoadIncrease,"% Additional load : ");
