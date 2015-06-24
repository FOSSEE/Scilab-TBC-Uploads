//example 9.2
clc;funcprot(0);
//Initialization of Variable
V1=120;//pri voltage
V2=28;//sec voltage
I=2;//pri current
f=60;//Hz
Vth=28.8;//open voltage
V3=12.1;//pri-short voltage
Is=2;//short current at 45 degree
pi=3.1428;
//calculation
Zi=(V2*V3)/V1/Is*cos(45*pi/180);
Zj=(V2*V3)/V1/Is*sin(45*pi/180);
printf('Zth=Zi in %f is',Zi)
printf('\n\nZth=Zj in %f is',Zj)
L=Zi/(2*pi*f);
disp(L*1000,"inductor in mH:")
clear()
