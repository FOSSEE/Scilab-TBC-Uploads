clc;clear;
//Example 5.6

//given data
T1=280;
P1=100;
m=0.02;
qout=16;
P2=600;
T2=400;

//from Table A-17
h1=280.13;
h2=400.98;

//calculations
// Ein - Eout = dEsystem / dt
Win=m*qout+m*(h2-h1);
disp(Win,'the input power of compressor in kW')
