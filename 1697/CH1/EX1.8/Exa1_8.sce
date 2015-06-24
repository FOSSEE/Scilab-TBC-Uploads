//Exa 1.8
clc;
clear;
close;
//given data :
Rl=1;//in ohm
//Formula : Rr=80*%pi^2*(l/lambda)^2
//Given l=lambda/10
//l/lambda=1/10
Rr=80*%pi^2*(1/10)^2;//in Ohm
disp(Rr,"Radiation resistance in Ohm: ");
Eta=Rr/(Rr+Rl);//Unitless
disp(Eta*100,"Antenna Efficiency in % : ");