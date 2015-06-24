clear;
clc;
//Example 7.14
V1=5;
V=-5;
Rs=0.1;
Rb=40;
R2=5.72;
Re=0.5;
Rc=5;
Rl=10;
b=150;
Vbe=0.7;
C1=35*10^-3;
C2=4;
Vt=0.026;
Icq=1.02;
r=b*Vt/Icq;
printf('\nsmall signal parameter=%.2f KOhm\n',r)
gm=Icq/Vt;
printf('\ntransconductance=%.3f mA/V\n',gm)
Cm=C2*(1+gm*Rc*Rl/(Rc+Rl));
printf('\nMiller capacitance=%.3f pF\n',Cm)
Cm=527*10^-3;
x=Rb*Rs/(Rb+Rs);
y=r*x/(r+x);
fH=1/(2*%pi*y*(C1+Cm));
printf('\nupper corner frequency =%.2fMHz\n',fH)
t=Rb*r/(Rb+r);
p=Rc*Rl/(Rc+Rl);
Av=gm*p*t/(t+Rs);
printf('\nmidband gain=%.2f\n',Av)
