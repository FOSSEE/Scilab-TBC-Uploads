//Exa 3.5
clc;
clear;
close;
//given data :
//l=lambda/10 meter
//Assume %pi^2 = 10
Rl=2;//in Ohm
disp("Rr=80*%pi^2*(dl/lambda)^2");
disp("dl/lambda = 1/10 : as l=lambda/10 ");
Rr=80*10*(1/10)^2;//in Ohm
disp(Rr,"Radiation Resistance in Ohm :  ");
ETA=Rr/(Rr+Rl);//in Ohm
disp(ETA*100," Efficiency inn % : ");