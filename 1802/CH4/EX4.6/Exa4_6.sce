//Exa 4.6
clc;
clear;
close;
//Given Data :
format('v',5);
dinner=6;//in meter
douter=12;//in meter
d=(dinner^2*douter)^(1/3);//in meter
r=2.8;//in meter
ds=0.7788*r;//in cm
L=2*log10(d*100/ds);//in mH/phase/km
disp(L*100,"Inductance for 100 km line(in mH) :");