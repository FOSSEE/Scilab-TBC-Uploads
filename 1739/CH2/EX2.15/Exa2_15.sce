//Exa 2.15
clc;
clear;
close;
//Given data :
n1=1.5;//unitless
alfa=2;//characteristic index profile
d=40;//in um
a=d/2;//in um
//Part (a) :
lambda=1.3;//in um
delta=1;
//Formula : v=2*%pi*a*NA/lambda=2*%pi*a*(n1*sqrt(2*delta))/lambda
v=2*%pi*a*(n1*sqrt(2*delta/100))/lambda;//Unitless
disp(v,"Normalized Frequency for single mode transmission : ");
//Part (b) :
//Formula : N=(alfa/alfa+2)*(v^2/2)
N=(alfa/(alfa+2))*(v^2/2);//No. of guided modes
disp(N,"No. of guided modes propagating in the fibre : ");