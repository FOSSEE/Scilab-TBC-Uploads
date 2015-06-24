//Example No. 6.14
clc;
clear;
close;
format('v',6);

//Given Data : 
P=4;//pole
f=50;//Hz
r1=0.04;//ohm
r1dash=0.04;//ohm
r2dash=0.04;//ohm
x1=0.2;//ohm
x2dash=0.2;//ohm
f1=20;//Hz
k=f1/f;//ratio of frequencies
Tmax20BYTmax50=(r1+sqrt(r1^2+(x1+x2dash)^2))/(r1/k+sqrt((r1/k)^2+(x1+x2dash)^2));
disp(Tmax20BYTmax50,"Ratio of max torque at 20 Hz to max Torque at 50 Hz : ");
Tst20BYTst50=((r1+r2dash)^2+(x1+x2dash)^2)/k/((r1/k+r2dash/k)^2+(x1+x2dash)^2);
disp(Tst20BYTst50,"Ratio of starting torque at 20 Hz to starting Torque at 50 Hz : ");
//at 20 Hz :
x11=x1*f1/f;//ohm
x22dash=x2dash*f1/f;//ohm
Ir20ByIr50=(f1/f)*[sqrt((r1+r2dash/r1dash)^2+(x1+x2dash)^2)]/[sqrt((r1+r2dash/r1dash)^2+(x11+x22dash)^2)];
disp(Ir20ByIr50,"Ratio of rotor current at 20 Hz to rotor current  at 50 Hz : ");
//Answer of rotor current ratio is wrong in the book.
