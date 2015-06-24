clear;
clc;

n=3
V=11;
C1=1;
C2=.2 * C1;

v1=1;
v2=(C1+C2)*v1/C1;
v3=((C1*v2)+(C2*(v1+v2)))/C1;

V3=V
V1=fix((V3/v3)*100)/100;
V2=round((V1*v2)*100)/100;

Vln=V1+V2+V3;
Vll=sqrt(3)*Vln;
eff=Vln*100/(n*V);

mprintf("\n(a) Maximum line to neutral voltage = %.2f kV", Vln);
mprintf("\n(b) String Efficiency = %.0f percent", eff);

