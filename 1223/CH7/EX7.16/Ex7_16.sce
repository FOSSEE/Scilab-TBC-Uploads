clear;
clc;
//Example 7.16
V1=5;
V=-5;
Rs=0.1;
R1=42.5;
R2=20.5;
R3=28.3;
Re=5.4;
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
Rb=R2*R3/(R2+R3);
x=Rb*r/(Rb+r);
y=Rs*x/(x+Rs);
Tp=y*(C1+2*C2);
printf('\ntime constant=%.3f ns\n',Tp)
Tp=Tp*10^-3;//micro sec
f=1/(2*%pi*Tp);
printf('\n3dB frequency =%0.3fMHz\n',f)
T=C2*Rc*Rl/(Rc+Rl);
printf('\ntime constant=%.2f ns\n',T)
T=T*0.001;//micro sec
f=1/(2*%pi*T);
printf('\nupper frequency=%.3f MHz\n',f)
x=Rc*Rl/(Rc+Rl);
y=Rb*r/(Rb+r);
Av=gm*x*(y/(y+Rs));
printf('\nmidband voltage gain=%.f \n',Av)
