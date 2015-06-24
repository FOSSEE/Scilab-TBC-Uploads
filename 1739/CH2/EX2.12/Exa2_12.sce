//Exa 2.12
clc;
clear;
close;
//Given data :
n1=1.5;//Unitless
delta=1;//relative refractive index difference in %
lambda=1.3;//in um
N=1100;//No. of modes
//Formula : v=2*%pi*a*n1*NA/lambda;
//NA=sqrt(2*delta)
//v=sqrt(2*N)
a=(sqrt(2*N)*lambda)/(2*%pi*n1*sqrt(2*delta/100));//Normalized frequency
disp(2*a,"Diameter of the fiber core in micro meter is : ");