//Exa 2.17
clc;
clear;
close;
//Given data :
format('v',8)
d=10;//in um
a=d/2;//in um
lambda_c=1.3;//in um
n1=1.55;//unitless
//Part (a)
//for single mode transmission cut-off wavelength is lambda_c=2*%pi*a*n1*sqrt(2*delta)/2.405
delta=(lambda_c*2.405/(2*%pi*a*n1))^2/2;//unitless
disp(delta,"Normalized refractive index difference in % : ");
//Part (b) 
//Formula : n2/n1=delta
n2=n1*(1-delta);
disp(n2,"Refractive index of cladding glass : ");
//Part (c) :
fi_o=asind(n1*sqrt(2*delta));//in degree
disp(fi_o,"Acceptance angle in degree : ");