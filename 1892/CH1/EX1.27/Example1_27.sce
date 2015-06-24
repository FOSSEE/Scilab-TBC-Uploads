// Example 1.27

clear; clc; close;
format('v',7);
// Given data
VL=3300;//in volt
f=50;//in Hz
P=10;//no. of poles
X2=0.25;//in ohm
R2=0.015;//in ohm
Sfl=2.5;//Slip in %

//Calculations
Ns=120*f/P;//in rpm
N=Ns*(1-Sfl/100);//in rpm
disp(N,"(1.) The speed of motor, N in rpm : ");
Sm=R2/X2;//Max Slip
Nm=Ns*(1-Sm);//Max speed in rpm
disp(Nm,"(2.) Speed of motor, Ns in rpm : ");
TmByTfl=Sm*R2/(R2^2+(Sm*X2)^2)*(R2^2+(Sfl/100*X2)^2)/(Sfl/100)/R2;//ratio
disp(TmByTfl,"(3.) Ratio of max torque to full load torque : ");
//Answer of 1st part is wrong in the book.
