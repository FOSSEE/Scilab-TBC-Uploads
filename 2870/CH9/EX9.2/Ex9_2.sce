clc;clear;
//Example 9.2

//given data
T1=17+273;//in K
P1=100;
r=8;//compression ratio i.e v1/v2
qin=800;

//constants used
R=0.287;//in kPa-m^3/kg-K

//from Table A-17
//at T1
u1=206.91;
vr1=676.1;

//calculations
//Process 1-2
vr2=vr1/r;
//at this vr2
T2=652.4;
u2=475.11;
P2=P1*(T2/T1)*(r);
//Process 2-3
u3=qin+u2;
//at this u3
T3=1575.1;
vr3=6.108;
P3=P2*(T3/T2)*1;//factor of 1 as v3=v2
disp(T3,'maximum temperature in the cycle in K');
disp(P3/1000,'maximum pressure in MPa');//factor of 1000 to convert into MPa
//Process 3-4
vr4=r*vr3;
//at this vr4 
T4=795.6;
u4=588.74;
//Process 4-1
qout=u4-u1;
Wnet=qin-qout;
disp(Wnet,'net work output in kJ/kg');
nth=Wnet/qin;
disp(nth,'thermal efficiency');
v1=R*T1/P1;
MEP=Wnet/(v1*(1-1/r));
MEP=round(MEP);
disp(MEP,'mean effective pressure in kPa')
