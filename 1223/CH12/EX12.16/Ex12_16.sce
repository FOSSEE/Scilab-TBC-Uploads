clear;
clc;
//Example 12.15
//Determine the loop gain fig12.45(a)
hFE=100;
Vbe=0.7;
Icq=0.492;
r=5.28;
gm=18.9;
Rs=10;
R1=51;
R2=5.5;
Re=0.500;
Rc=10;
Rf=82;
x=r*R2/(r+R2);
y=R1*x/(x+R1);
t=Rs*y/(y+Rs);
Req=t;
printf('\nequivalent resistance=%.2f KOhm\n',t)
T=gm*Rc*Req/(Rc+Rf+Req);
printf('\nthe loop gain=%.2f\n',T)
