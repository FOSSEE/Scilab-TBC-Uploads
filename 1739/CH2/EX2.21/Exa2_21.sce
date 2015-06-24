//Exa 2.21
clc;
clear;
close;
//Given data :
format('v',5);
n1=1.447;//unitless
n2=1.442;//unitless
lambda=1.3;//in um
d=7.2;//in um
a=d/2;//in um
//Formula : v=2*%pi*a*sqrt(n1^2-n2^2)/lambda
v=2*%pi*a*sqrt(n1^2-n2^2)/lambda;//unitless
disp(v,"Value of v : ");
disp("To achieve single mode transmission in an idealised step index fibre, Value of v must be less than 2.405. Hence, the fibre given will permit single mode          transmission.")