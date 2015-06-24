//Exa 4.1
clc;
clear;
close;
//Given data :
f=50;//Hz
d=1*100;//cm
r=1.25/2;//cm
r_dash=r*0.7788;//cm
L=0.4*log(d/r_dash);//mH
disp(L,"Loop inductance per km(mH)");
XL=2*%pi*f*L*10^-3;//ohm/Km
disp(XL,"Reactance of transmission line(ohm/km)");
