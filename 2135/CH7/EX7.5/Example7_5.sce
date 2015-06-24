//Ex 7.5
clc;
clear;
close;
format('v',7);

//Given data :
Vs=5.7;//litre
Vs=Vs/1000;//m^3
Pm=600;//KN/m^2
N=800;//rpm

//Calculation
n=N/2;//No. of strokes/min
IP=Pm*Vs*n/60;//KW
disp(IP,"Indicated power of Engine in KW :  ");
