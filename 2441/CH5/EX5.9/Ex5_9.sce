//Example 5.9
clc;clear;close;
format('v',7);
C=4000;//MW
f=50;//Hz
L=C;//MW//Load
R=2.5;//%////Speed regulation constant
H=5;//sec////Inertia constant
delPL=1;//%////change in load
delf=1;//%////change in frequency
disp("Part(a)");
Ls=80;//MW;//increase in step to load
R=R/100*f;//z/p.u.MW
D=delPL/delf*L/f;//MW/Hz
D=D/C;//p.u.MW/Hz
M=Ls/L;//unitless//for given step load
Kp=1/D;//Hz/p.u.MW
Tp=2*H/f/D;//sec
Tdash1=(R+Kp)/R/Tp;//sec
disp(Tdash1,"(R+Kp)/(R*Tp) in seconds = ");
Tdash2=(R*Kp*M)/(R+Kp);//sec
disp(Tdash2,"(R*Kp*M)/(R+Kp) in seconds = ");
delf0=-Tdash2;//Hz////Static frequency error
disp(delf0,"Static frequency error(Hz)");
disp("Part(b)");
Ki=(1+Kp/R)^2/4/Tp/Kp;//p.u.MW/Hz
disp(Ki,"Critical value of Ki(p.u.MW/Hz)");
