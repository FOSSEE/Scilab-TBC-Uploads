//Example 5.19
//To Convert a single Pole LPF into BPF 
clear;
clc ;
close ;
s=%s;
z=%z;
HZ=(0.5*(1+z^(-1)))/(1-0.302*z^(-2));
T=1;
wu=3*%pi/4;
wl=%pi/4;
wp=%pi/6;
k=tan(wp/2)/tan((wu-wl)/2);
a=cos((wu+wl)/2)/cos((wu-wl)/2);
transf=-((((k-1)/(k+1))*(z^(-2)))-((2*a*k/(k+1))*(z^(-1)))+1)/(z^(-2)-(2*a*k/(1+k)*z^(-1))+((k-1)/(k+1)));
HZ1=horner(HZ,transf);
disp(HZ1,'H(z) of B.P.F =');