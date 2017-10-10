//Example 7.7
clear;
clc;

//Given
R=0.08205;//gas constant in atm dm^3 K^-1 mol^-1
R1=8.314;//gas constant in J K^-1 mol^-1
T=293;//temperature in K
w1=100;//weight of ethanol taken in g
w2=100;//weight of methanol taken in g
p1=44.5;//vapour preaaure of pure ethanol in mm Hg
p2=88.7;//vapour preaaure of pure methanol in mm Hg

//To determine the vapour pressure of solution,partial vapour pressures and vapour phase composition
n1=100/46;//moles of ethanol
n2=100/32;//moles of methanol
x1=n1/(n1+n2);//mole fraction of ethanol
x2=n2/(n1+n2);//mole fraction of methanol
P1=p1*x1;//partial pressure of ethanol in mm Hg
P2=p2*x2;//partial pressure of methanol in mm Hg
P=P1+P2;//vapour pressure of the solution in mm Hg
y1=P1/P;//mole fraction of ethanol in the vapour phase
y2=1-y1;//mole fraction of methanol in the vapour phase
mprintf('(i) Vapour pressure of the solution = %f',P);
mprintf('\n (ii) Partial vapour pressure of ethanol is %f mm Hg and that of methanol is %f mm Hg',P1,P2);
mprintf('\n (iii) mole fraction of ethanol in vapour phase is %f and that of methanol is %f',y1,y2);
