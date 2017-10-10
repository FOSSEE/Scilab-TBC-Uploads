//Example 7// Ch 12
clc;
clear;
close;
// given data
D=15;//conductor spacing in cm
rsh=2.75;//sheath radius in cm
I=250;//current in A
f=50;//in Hz
Xm=2*%pi*f*2*log(D/rsh)*10^-7*10^3;//conductor to sheath mutual inductive reactance 
E=I*Xm;//indused sheath field in V/km
printf("indused sheath field %f V/km",E)
E1=sqrt(3)*E;//voltage b/w sheaths when bonded at one end
printf("voltage b/w sheaths when bonded at one end %f V/km",E1)
 
