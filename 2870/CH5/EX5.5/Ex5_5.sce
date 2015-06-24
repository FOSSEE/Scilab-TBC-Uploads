clc;clear;
//Example 5.5

//given data
P1=250;
T1=700;
A1=0.2;
qout=1.2;
m=10;
P2=200;
V2=900;

//from Table A-6E
v1=2.6883;
h1=1371.4;

//calculations
V1=m*v1/A1;
disp(V1,'the inlet velocity in ft/s');
// Ein - Eout = dEsystem / dt
h2=h1-qout-(V2^2 - V1^2)/2/25037;//factor of 25037 to convert to Btu/lbm
//at this value h2, from Tablw A-6E
T2=662;
disp(T2,'exit temperature in F')
