clc;clear;
//Example 12.6

//given data
T1=-40+460;
T2=-50+460;//converted into R from F
R=0.01946;

//from Table A-11E
P1=7.432;
hfg=97.100;

//calcualation\
//using Equation 12–24
//ln(P2/P1)= hfg/R *(1/T1 - 1/T2)
P2=P1*exp(hfg/R *(1/T1 - 1/T2));
disp(P2,'the saturation pressure of refrigerant-134a in psia')
