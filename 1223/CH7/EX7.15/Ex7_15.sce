clear;
clc;
//Example 7.15
V1=5;
V=-5;
Rs=0.1;
R1=40;
R2=5.72;
Re=0.5;
Rc=5;
Rl=10;
b=150;
Vbe=0.7;
C1=35;
C2=4;
Vt=0.026;
Icq=1.02;
gm=39.2;
r=3.82;
x=Re*Rs/(Re+Rs);
t=r/(1+b);
y=t*x/(t+x);
Tp=y*C1;
printf('\ntime constant=%.3f ns\n',Tp)
Tp=0.679*10^-3;//micro sec
f=1/(2*%pi*Tp);
printf('\nupper frequency =%.3fMHz\n',f)
T=C2*Rc*Rl/(Rc+Rl);
printf('\ntime constant=%.3f ns\n',T)
T=13.3*10^-3;//micro sec
f=1/(2*%pi*T);
printf('\nupper frequency=%.2f MHz\n',f)
x=Rc*Rl/(Rc+Rl);
y=Re*t/(Re+t);
Av=gm*x*(y/(y+Rs));
printf('\nmidband voltage gain=%.2f \n',Av)
