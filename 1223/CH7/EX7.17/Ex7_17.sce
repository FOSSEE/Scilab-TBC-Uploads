clear;
clc;
//Example 7.17
V1=5;
V=-5;
Rs=0.1;
R1=40;
R2=5.720;
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
r=3.820;
t=r/(1+b);
t=t*0.001;
f=1/(2*%pi*C1*t);
printf('\nthe zero occurs at this frequency=%.2f MHz\n',f)
x=1+gm*Re*Rl/(Re+Rl);
Rb=R1*R2/(R1+R2)
d=x*r;
y=d*Rb/(d+Rb);
t=y*Rs/(y+Rs);
Tp=t*(C2+C1/x);
printf('\ntime constant=%.2f ns\n',Tp)
Tp=Tp*10^-3;//micro sec
f=1/(2*%pi*Tp);
printf('\n3dB frequency=%.f MHz\n',f)
