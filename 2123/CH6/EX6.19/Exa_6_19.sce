//Example No. 6.19
clc;
clear;
close;
format('v',7);

//Given Data : 
V=415;//volt
P=4;//pole
f=50;//Hz
N=1370;//rpm
r1=2;//ohm
r2dash=3;//ohm
x1=3.5;//ohm
x2dash=3.5;//ohm
X0=55;//ohm
Ns=120*f/P;//rpm
S=(Ns-N)/Ns;//slip
Nfl=Ns-N;//rpm
disp("Part(a) : ");
disp(Nfl,"Full load slip speed in rpm : ");
Z=(r1+%i*x1)+%i*X0*(r2dash/S+%i*x2dash)/(r2dash/S+%i*(X0+x2dash));//ohm
Istator=V/sqrt(3)/abs(Z);//A
disp(Istator,"Stator current in A : ");
I2dash=Istator*(%i*X0/(r2dash/S+%i*(X0+x2dash)));//A
Tfl=3*abs(I2dash)^2*r2dash/2/%pi/S/(Ns/60);//N-m
disp(Tfl,"Motor torque in N-m : ");
disp("Part(b) : ");
//Torque is equal so stator current will be same.
disp(Istator,"Stator current in A : ");
N=1200;//rpm
Ns=N+Nfl;//rpm
f_inv=4*Ns/120;//Hz
disp(f_inv,"Inverter frequency in Hz : ");
