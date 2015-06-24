//Example 5.10
clc;clear;close;
format('v',7);
s=poly(0,'s');//for transfer function
Tg=0.2;//sec///time constant of governing system
Tt=2;//sec///time constant of turbine
Gr=1/(1+Tg*s);//Transfer function of governer
Gt=1/(1+Tt*s);//Transfer function of turbine
C=1500;//MW
f=50;//Hz
R=4;//%////Speed regulation constant
H=5;//sec////Inertia constant
delPL=1;//%////change in load
delf=1;//%////change in frequency
disp("Part(a)");
R=R/100*f;//z/p.u.MW
D=delPL/delf*C/f;//MW/Hz
D=D/C;//p.u.MW/Hz
Kp=1/D;//Hz/p.u.MW
Tp=2*H/f/D;//sec
Gp=Kp/(1+Tp*s);//Transfer function of power system
delFs=-Gp/(1+Gr*Gt*Gp/R);
disp(delFs,"delFs = M/s*");
disp("Part(b)");
delf0_by_M=-Kp/(1+Kp/R);//Hz
delf0=delf/100*f;//Hz
M=delf0/delf0_by_M;//p.u.MW
M=M*C;//MW
disp(M,"Largest step change(MW)");
//Transfer functions multiplication Gr*Gt*Gp is calculated & it is not possible to show together without calculated as in the book.
