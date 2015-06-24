clc
clear

//INPUT
d=0.35;//diameter of the mirror in m
t=5;//time in min
T=16;//temperature of water found to be in deg.C
m=60;//mass of water in gm
mc=30;//mass of calorimeter in gm
cp=0.1;//specific heat of copper in cal/gm/deg.C

//CALCULATIONS
q=(m+cp*mc)*T*4/(5*3.14*d^2);//amount of heat received by earth in cal

//OUTPUT
mprintf('amount of heat received by earth is %3.2f cal',q)
