//Exa 2.19
clc;
clear;
close;
//Given data :
format('v',5);
n1=1.49;//unitless
n2=1.48;//unitless
lambda_c=1.5;//in um
//Formula : a=2.405*lambda_c/(2*%pi*sqrt(n1^2-n2^2))
a=2.405*lambda_c/(2*%pi*sqrt(n1^2-n2^2));//in um
disp(2*a,"Fibre core diameter in micro meter : ");