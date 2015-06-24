clc;clear;
//Example 8.2

//given values
TH=2000;
T0=77+460;//in R
Qin=3000;

//calculation
nth=1-(T0/TH);
Wmax=nth*Qin;
Wmax=round(Wmax)
disp(Wmax,'the rate of energy flow in Btu/s')
