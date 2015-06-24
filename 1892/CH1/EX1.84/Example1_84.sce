// Example  1.84

clc;clear;close;

// Given data
format('v',7);
P=4;//no. of poles
f=50;//in Hz
R2=0.4;//in ohm
X2=4;//in ohm

//calculations
Ns=120*f/P;//in rpm
Sm=R2/X2;//slip at max Torque
Nm=Ns*(1-Sm);//in rpm
disp(Nm,"Speed at Max Torque in N-m : ");
TmaxByTst=(1+Sm^2)/2/Sm;//ratio
disp(TmaxByTst,"Ratio of max Torque to starting Torque : ");
//After adding additional resistance
TstByTm=1/2;//given ratio
//TstByTm=2*X2*(R2+r)/((R2+r)^2+X2^2);//ratio
P=[TstByTm TstByTm*2*R2-2*X2 TstByTm*(R2^2+X2^2)-2*X2*R2];//polynomial for additional value of resistance 
r=roots(P);//in ohm
r=r(2);//leaving higher value
disp(r,"Required resistance value in ohm ; ");
//Answer of resistance is wrong in the book.
