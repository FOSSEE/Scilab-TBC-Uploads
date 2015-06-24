//determine critical current density
//Ex:16.9
clc;
clear;
close;
ho=65*10^3;//in A/m
tc=7.18;//in K
t=4.2;//in K
r=0.5*10^-3;//in m
hc=ho*(1-(t/tc)^2);//in A/m
ic=2*3.14*r*hc;//in A
a=3.14*r^2;//area in m^2
j=ic/a;//in A/m^2
disp(j,"current density (in A/m^2) = ");