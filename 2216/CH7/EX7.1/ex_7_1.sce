//Example 7.1: Intrinsic carrier
clc;
clear;
close;
//given data :
format('v',9)
m=9.11*10^-31;// in kg
k=1.38*10^-23;// in JK^-1
h=6.626*10^-34;// in Js
ev=1.6*10^-19;// in J
T=300;// in K
me=0.07*m;// in kg
mh=0.56*m;// in kg
Eg=1.43*ev;// in J
ni=2*((2*%pi*k*T)/h^2)^(3/2)*(me*mh)^(3/4)*exp(-Eg/(2*k*T));
disp(ni,"Intrinsic carrier concentration ,ni(m^-3) = ")
