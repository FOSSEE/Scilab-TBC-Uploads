//Exa 2.12
clc;
clear;
close;
//given data
r1=100*10^-3;// in m
r2=200*10^-3;// in m
q1=1.16*10^5;// in W/m^2
t2=30;// in degree C
k=50;// in W/mK
L=1;// in m
// Total heat passing through the cylinder q
//q=q1*2*%pi*r1*L                     (1)
// and heat conducted through the cylinder
// q= 2*%pi*k*L(t1-t2)/log(r2/r1)     (2)
// From (1) and (2)
t1= t2+ q1*2*%pi*r1*L*log(r2/r1)/(2*%pi*k*L);// in degree C
disp(t1,"Temperature of inner surface in degree C");