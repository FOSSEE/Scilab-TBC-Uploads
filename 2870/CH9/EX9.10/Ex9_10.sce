clc;clear;
//Example 9.10

//from 9.2
r=8;
T0=290;
T1=290;
T2=652.4;
T3=1575.1;
P2=1.7997;
P3=4.345;
qin=800;
qout=381.83;
wnet=418.17;
Tsource=1700;

//constants used
R=0.287;//in kPa-m^3/kg-K

//calculations
//s1=s2 ; s3=s4
s03=3.5045;
s02=2.4975;
s32=(s03-s02)-R*log(P3/P2);//s32 stands for s3-s2
xdest23=T0*(s32-qin/Tsource);
Tsink=T1;
xdest41=T0*(-s32+qout/Tsink);
xdestcycle=xdest23+xdest41;
disp(xdestcycle,'exergy destrustion associated with Otto cycle inkJ/kg');
// X4 = (u4 - u0 )- T0*(s4 - s0) + P0(v4 - v0)
// s4 - s0 = s4 - s1 = s32
// u4 - u0 = u4 - u1 = qout
// v4 - v0 = v4 - v1 = 0
//hence x4 is
X4=qout-T0*s32;
disp(X4,'exergy destruction of purge stream in kJ/kg')
