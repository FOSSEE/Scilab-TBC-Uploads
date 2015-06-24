//example 9.6
clc;funcprot(0);
//Initialization of Variable
V=208;//voltage
R=100;//load
Vd=150;//V
pi=3.1428;
//calculation
r=Vd/V;
disp(r,"ratio:")
printf('firing angle is 58 degrees');
a=58;//degree
Vd=3*2^.5*208*(cos(pi/3+a*pi/180)-cos(2*pi/3+a*pi/180))/pi;
disp(Vd,"dc voltage in V:")
t=a*16.7/360;
disp(t,"time delay in ms:")
clear()
