//Part A Chapter 7 Example 8
clc;
clear;
close;
P1=1;//MPa
V1=0.05;//m^3
x1=80/100;//dryness fraction
P2=1;//MPa
V2=0.2;//m^3
W=P1*1000*(V2-V1);//kJ
vf=0.001127;//m^3/kg//at 1 MPa
vg=0.19444;//m^3/kg//at 1 MPa
uf=761.68;//kJ/kg//at 1 MPa
ufg=1822;//kJ/kg//at 1 MPa
vfg=vg-vf;//m^3/kg
v1=vf+x1*vfg;//m^3/kg
ms=V1/v1;//kg(mass of steam)
v2=V2/ms;//m^3/kg
T1=1000;T2=1100;//degree C(as v2>vg(1MPa))
T=T1+(T2-T1)*(v2-0.5871)/(0.6355-0.5871);//degree C
u2=4209.6;//kJ/kg(at 1MPa & T degree C)
u1=uf+x1*ufg;//kJ/kg
Q=W+ms*(u2-u1);//kJ
disp("Heat added is "+string(Q)+" kJ");
