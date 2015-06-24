//Ex 7.7
clc;
clear;
close;
format('v',7);

//Given data :
d=110/1000;//m
L=140/1000;//m
Pmi=600;//KN/m^2
N=1000;//rpm
n=N;//strokes/min(for 2 stroke)
A=%pi/4*d^2;//m^2
IP=Pmi*A*L*n/60;//KW
disp(IP,"Indicated power of the engine in KW : ");
