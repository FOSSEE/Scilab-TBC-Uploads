clc;clear;
//Example 16.8

//given data
T=15;
P=92;

//from Table A-4
Pv=1.7057;

//calculations
yv=Pv/P;
disp(yv,'mole fraction of water vapor at the surface');
yw=1-yv;
yw=round(yw)
disp(yw,'mole fraction of water in the lake')
