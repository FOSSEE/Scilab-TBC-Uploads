// Example 1.22

clear; clc; close;
format('v',7);
// Given data
E1Line=1000;//in volt
R2=0.01;//in ohm
X2=0.2;//in ohm
I2st=200;//in Ampere
ratio=3.6;//ratio of stator to rotor turns

//Calculations
K=1/ratio;//ratio of rotor to stator turns
E1ph=E1Line/sqrt(3);//in Volt
E2ph=K*E1ph;//in volt
//Let R2dash=R2+Rx
//Formula : I2st=E2ph/sqrt(R2dash^2+X2^2);
R2dash=sqrt((E2ph/I2st)^2-X2^2)
Rx=R2dash-R2;//in ohm
disp(Rx,"External resistance required per phase in ohm : ");
