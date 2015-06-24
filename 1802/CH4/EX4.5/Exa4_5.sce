//Exa 4.5
clc;
clear;
close;
//Given Data :
format('v',7);
d1=3;//in meter
d2=3;//in meter
d3=d1+d2;//in meter
d=378;//in cm
dia=2.5;//in cm
r=dia/2;//in cm
epsilon_o=8.854*10^-12;//constnt
L=(0.5+2*log10(d/r))*10^-7;//in H/m
disp(L*60*1000*1000,"Inductance for 60 km line(in mH) :");
C=2*%pi*epsilon_o/log(d/r);//in F/m
disp(C*60*10^3*10^6,"Capacitnce for 60 km line(in uF) :");