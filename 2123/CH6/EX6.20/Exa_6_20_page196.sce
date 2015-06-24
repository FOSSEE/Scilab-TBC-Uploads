//Example No. 6.20(page no. 196)
clc;
clear;
close;
format('v',7);

//Given Data : 
Is=6;//A
f=40;//Hz
SlipSpeed=100;//rpm
V=415;//volt
P=4;//pole
r1=2;//ohm
r2dash=3;//ohm
x1=3.5;//ohm
x2dash=3.5;//ohm
X0=55;//ohm
N=1370;//rpm
Ns=120*50/P;//rpm
S=(Ns-N)/Ns;//slip
I2dash=Is*X0/abs(r2dash/S+%i*(X0+x2dash));//A
disp(I2dash,"Rotor current in Ampere : ");
T=3*I2dash^2*r2dash/(2*%pi*S*(Ns/60));//N-m
disp(T,"Full  load torque in N-m : ");
Ns2=120*f/P;//rpm
MotorSpeed=Ns2-SlipSpeed;//rpm
disp(MotorSpeed,"Motor speed in rpm : ");
