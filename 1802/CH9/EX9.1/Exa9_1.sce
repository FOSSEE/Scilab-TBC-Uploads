//Exa 9.1
clc;
clear;
close;
//Given Data :
format('v',5);
V=250;//in volt
f=50;//in Hz
l=300;//in km
C_earth=0.03;//in uF
C=l*C_earth*10^-6;//in F
XL=1/(3*2*%pi*f*C);//in ohm
disp(XL,"Reactance required for the Peterson coil(in ohm) :");