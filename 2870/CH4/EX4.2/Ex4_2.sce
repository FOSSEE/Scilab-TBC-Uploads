clc;clear;
//Example 4.2

//given values
m=10;
Po=60;
T1=320;
T2=400;

//from Table A–6E
v1=7.4863;//at 60 psia and 320 F
v2=8.3548;//at 60 psia and 400 F

//calculations
//W = P dV which on integrating gives W = m * P * (V2 - V1)
W=m*Po*(v2-v1)/5.404;//coverting into Btu from psia-ft^3
disp(W,'work done by the steam during this process in Btu')
