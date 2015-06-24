//chapter 5 example 3
//=============================================================================
clc;
clear;
//Given Data
//let l   = dVr/Vr ; f  = df/f ; Vr/f  = R
l     = 5;//percentage change in repeller voltage
f     = 1;//percentage change in operating frequency
R     = 1;//ratio of repeller voltage to operating frequency
NR    = 1.5;//new ratio of repeller voltage to operating frequency in volts/MHz
e     =  1.6*10^-19;//charge of electron
m     =  9.1*10^-31;//mass of electron in kg

//Calculations

//dVr/df = ((2*pi*s)/((2*pi*n)-pi/2))*sqrt(8*m*Va/e));
//((df/f)/(dVr/Vr)) = (Vr/f)*((2*pi*n)-pi/2)/(2*pi*s)*sqrt(e/(8*m*Va));
//((df/f)/(dVr/Vr)) = K*(Vr/f);
//where K = (((2*pi*n)-pi/2)/(2*pi*s))*sqrt(e/(8*m*Va))
K    = (f/l)*(1/R)
PCF  = NR*K*l//percentage change in frequency when new ratio (Vr/f)=1.5

//Output
mprintf('Percentage Change in frequency is %3.2f percent',PCF);

//=============================================================================
