clc
clear

//INPUT
t=289.6;//temperature in K
dt=0.0244;//raise in temperature in deg.C
v1=0.00095;//volume occupied in liquid state in litres
v2=0.00079;//volume occupied in solid state in litres

//CALCULATIONS
l=t*(v1-v2)/dt;//latent heat of fusion in lit.atm

//OUTPUT
mprintf('the latent heat of fusion is %3.2f lit.atm',l)
