// Example 1.20

clear; clc; close;
format('v',7);
// Given data
E2line=60;//in Volt
R2=0.6;//in ohm
X2=4;//in ohm
Rx=5;//in ohm
Xx=2;//in ohm
S=4;//in %

//Calculations
E2ph=E2line/sqrt(3);//in volt
ZT=R2+%i*X2+Rx+%i*Xx;//
I2=E2ph/abs(ZT);//in Ampere
disp(I2,"(i) Rotor Current per phase in Ampere : ");
S=S/100;//slip
Z2r=R2+%i*S*X2;//in ohm
I2r=S*E2ph/abs(Z2r);//in Ampere
disp(I2r,"(ii) Rotor Current per phase in Ampere : ");
