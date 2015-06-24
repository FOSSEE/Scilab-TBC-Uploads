clc;clear;
//Example 8.14

//given data
TR=1200;
T0=300;
P0=100;
Tsys=400;
P1=350;
V1=0.01;
V2=2*V1;    

//calculations
W=P1*V1*log(V2/V1);
Wsurr=P0*(V2-V1);
Wu=W-Wsurr;
disp(Wu,'the useful work output in kJ');
// Qin - W = m*Cv*dT, Since dt=0
Q=W;
Sgen=Q/Tsys-Q/TR;
Xdestroyed=T0*Sgen;
disp(Xdestroyed,'the exergy destroyed in kJ/K');
Wrev=T0*Q/Tsys-Wsurr+(1-T0/TR)*Q;
disp(Wrev,'the reversible work is done in the process in kJ');
