//Example 5.8
clc;clear;close;
format('v',6);
C=4000;//MW
f=50;//Hz
L=2500;//MW//Load
R=2;//Hz/p.u.MW////Speed regulation constant
H=5;//sec////Inertia constant
delPL=2;//%////change in load
delf=1;//%////change in frequency
disp("Part(a)");
D=delPL/delf*L/f;//MW/Hz
D=D/C;//p.u.MW/Hz
Beta=D+1/R;//p.u.MW/Hz
delf0=-0.2;//Hz
M=-(delf0)*Beta;//p.u.MW
M=M*C;//MW
disp(M,"Largest change in step load(MW)");
disp("Part(b)");
Kp=1/D;//Hz/p.u.MW
Tp=2*H/f/D;//sec
Tdash=(R+Kp)/R/Tp;//sec
disp(Tdash,"(R+Kp)/(R*Tp) in seconds = ");
printf('Change in frequency as a funtion of time, \ndelf(t) = -0.2*(1-epsilon^(-%f*t))',Tdash);
