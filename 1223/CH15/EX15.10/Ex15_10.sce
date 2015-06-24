clear;
clc;
//Example 15.10
C=15*10^-9;
T=100*10^-6;//(s) time
R=T/(1.1*C);
R=R*0.001;//Kohm
printf('\nResistance R=%.2f KOhm\n',R)
