clc;clear;
//Example 14.2

//given data
T=20;
RH=0.75;

//from Table A-4
Psat=2.3392;
Pv=RH*Psat;
//thus at this from Eq 14-13
Tdp=15.4;
disp(Tdp,'window temperature in C')
