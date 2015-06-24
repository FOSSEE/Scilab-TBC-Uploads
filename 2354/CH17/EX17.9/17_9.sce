//example 17.9
clc; funcprot(0);
// Initialization of Variable
pi=3.14;
qs=2000;
cp=4181;
m=0.01;
D=0.06;
k=0.67;
Nu=4.36;
L=m*cp/pi/0.06/qs*(80-20);
disp(L,"tube length in m");
h=Nu*k/D;
Ts=qs/h+80;
disp(Ts,"surface temperature in degreeC");
clear()
