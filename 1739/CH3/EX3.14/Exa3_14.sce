//Exa 3.14
clc;
clear;
close;
//Given data :
d=8;//in um
a=d/2;//in um
a=a*10^-6;//in meter
n1=1.5;//unitless
n2=1.46;//unitless
lambda=1.55;//in um
lambda=1.55*10^-6;//in meter
c=3*10^8;//speed of light in m/s
lambda_c=(2*%pi*a*sqrt(n1^2-n2^2))/2.405;//in meter
Rcs=(20*lambda/(n1-n2)^(3/2))*[(2.748*lambda_c-0.996*lambda)/lambda_c]^-3;//in meter
Rcs=Rcs*10^3;//in mm
disp(Rcs," Critical radius of curvature in milli meter : ");
//Note : Answer in the book is wrong.