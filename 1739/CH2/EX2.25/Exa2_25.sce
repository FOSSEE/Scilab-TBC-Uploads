//Exa 2.24
clc;
clear;
close;
//Given data :
delta=1;//relative refractive index difference in %
n1=1.47;//unitless
lambda=1.5;//in um
alfa=2;//unitless
//Formula : v=2*%pi*a*n1*sqrt(2*delta)/lambda
a=2.405*lambda/(2*%pi*n1*sqrt(2*delta/100));
disp(2*a,"Hence the diameter in micro meter : ");