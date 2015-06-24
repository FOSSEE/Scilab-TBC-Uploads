//Exa 2.8
clc;
clear;
close;
//Given data :
d=60;//in um
a=d/2;//in um
delta=1;//relative refractive index difference in %
lambda=0.80;//in um
n1=1.5;//Unitless
//Part (a)
//Formula : v=2*%pi*a*n1*NA/lambda;
//NA=sqrt(2*delta)
v=2*%pi*a*n1*sqrt(2*delta/100)/lambda;//Normalized frequency
disp(v,"Normalized frequency for the fiber : ");
//Part (b)
disp("Only the modes with cut-off v numbers below this value will propagate.");
N=v^2/2;//No. of modes supported
disp(round(N),"Number of modes supported : ");
//Note : Answer in the book is wrong.