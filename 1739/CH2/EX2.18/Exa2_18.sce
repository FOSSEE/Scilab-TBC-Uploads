//Exa 2.18
clc;
clear;
close;
//Given data :
format('v',5);
d=7;//in um
a=d/2;//in um
n1=1.49;//unitless
delta=1;//relative refractive index difference in %
//Part (a)
//Formula : lambda_c=2*%pi*a*n1*sqrt(2*delta)/2.405;
lambda_c=2*%pi*a*n1*sqrt(2*delta/100)/2.405;//in um
disp(lambda_c,"Shortest wavelength of the light in micre meter :");
//Part (b) 
//Formula : delta=(1/2)*{2.405*lambda_c/(2*%pi*a*n1)}^2
d=10;//in um
a=d/2;//in um
delta=(1/2)*{2.405*lambda_c/(2*%pi*a*n1)}^2;//unitless
disp(delta*100,"Maximum possible relative refractive index difference in % :");