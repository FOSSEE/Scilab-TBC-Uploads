clc;clear;
//Example 8.11

//given data
m=0.05;
P1=1000;
T1=300+273;//in K
P2=200;
T2=150+273;//in K
P0=100;
T0=25+273;//in K
Qout=2;

//from Table A-6 & A-4
u1=2793.7;
v1=0.25799;
s1=7.1246;
u2=2577.1;
v2=0.95986;
s2=7.2810;
u0=104.83;
v0=0.00103;
s0=0.3672;

//calculations
X1=m*(u1-u0-T0*(s1-s0)+P0*(v1-v0));
X2=m*(u2-u0-T0*(s2-s0)+P0*(v2-v0));
disp(X1,'exergy of intial state in kJ');
disp(X2,'exergy of final state in kJ');
dX=X2-X1;
disp(dX,'exergy change in system in kJ');
Wout=-Qout-m*(u2-u1);
Wu=Wout-P0*m*(v2-v1);
Xdestroyed=X1-X2-Wu;
disp(Xdestroyed,'the exergy destroyed in kJ');
nII=Wu/(X1-X2);
disp(nII,'second law efficiency of this process')
