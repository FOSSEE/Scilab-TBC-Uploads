clear;
clc;

//given parameter
r=1; //radius
d=3
h=300;
p=500;
q=(100*sqrt((6^2)+(5^2)));
l=(2*(10^-7)*log(((2^(1/6))*((d/(.7788*r))^(1/2))*((p/q)^(2/3)))));
L=l*h*1000*1000;
Xl= 2*%pi*50*L*(10^-3);
mprintf(" Inductance = %.3f mH\n",L);
mprintf(" Rectance = %.3f ohm",Xl);
