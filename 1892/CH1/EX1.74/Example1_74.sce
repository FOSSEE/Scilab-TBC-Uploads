// Example  1.74

clc;clear;close;

// Given data
format('v',6);
emf=60;//in volt
R2=0.6;//in ohm
X2=4;//in ohm
Rrh=5;//in ohm
Xrh=2;//in ohm
S=4;//in %

//calculations
S=S/100;//slip
E2=emf/sqrt(3);//in volt
Rt=R2+Rrh;//in ohm
Xt=X2+Xrh;//in ohm
I2=E2/sqrt(Rt^2+Xt^2);//in Ampere
disp(I2,"(a) Current per phase in rotor in Ampere : ");
E2s=S*E2;//in volt
Z2s=sqrt(R2^2+(S*X2)^2);//in ohm
I2s=E2s/Z2s;//in Ampere
disp(I2s,"(b) Current per phase in rotor in Ampere : ");
