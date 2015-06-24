//Ex 7.2
clc;
clear;
close;
format('v',7);

//Given data :
d=18/100;//m
L=26/100;//m
N=400;//rpm
positive_mep=6;//bar
negative_mep=-0.3;//bar
n=180;//strokes/min
Etta_m=0.75;

//Calculation
Pm=positive_mep+negative_mep;//bar
A=%pi/4*d^2;//m^2
IP=Pm*10^5*A*L*n/60/1000;//KW
BP=IP*Etta_m;//KW
disp(BP,"B.P. of engine in KW : ");
