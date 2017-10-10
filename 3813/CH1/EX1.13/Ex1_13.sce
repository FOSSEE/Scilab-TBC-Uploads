//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex1_13
clc;
clear;
V=500;//Voltage in V
r1=0.13;//resistance in ohm
r2=0.32;//resistance in ohm
x1=0.6*%i;//reactance in ohm
x2=1.48*%i;//reactance in ohm
rm=250;//resistance in ohm
xm=20;//reactance in ohm
S=0.05;//Full load slip in %
Z2=r1+x1+(r2/S)+x2;
disp(Z2,"The impedence of motor is:")
I2=(V/(sqrt(3)*(6.853)));
T1=3*(I2)^2*(r2/S);
Sb=2-S;
Sf=2-S+r1;
Zb=r1+x1+(Sb/Sf)+x2;
disp(Zb,"The impedence at plugging is:")
I=(V/(sqrt(3)*(2.336)));
T2=3*(I)^2*(Sb/Sf);
T=T1+T2;
disp(T,"The braking torque in Nm is:")
