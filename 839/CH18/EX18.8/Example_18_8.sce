//clear//
clear;
clc;

//Example 18.8
//Given
xOA = 0.15;
xAi = 0.015;

P = 1; //[atm]

//Solution

Pv = 3.4; //[atm]
alpha_o = 3.4; //at 36 C
Tbi = 27; //[C]
alpha_i = 3.6
alpha = (alpha_o+alpha_i)/2;
//Basis 1 mol Feed
nOA = 0.15; //[mol]
nA = 0.015; //[mol]
nOB = 0.85; //[mol]
//Using Eq.(18.79)
nB = nOB*(nA/nOA)^(1/alpha); //[mol]
n = nA+nB; //[mol]
xA = nA/n; 
disp('mol',nB,'pentane removed is')
disp((1-xA),'xB',xA,'xA','composition of the remaining liquid is')
