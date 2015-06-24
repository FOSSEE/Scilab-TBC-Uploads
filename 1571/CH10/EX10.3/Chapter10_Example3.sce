clc
clear

//INPUT
cp=0.0909;//specific heat at constant pressure in cal/degree
t=273;//temperature in K
v=0.112;//specific volume in lit/deg.C
a=5.01*10^(-6);//coefficient of linear expansion
k=8*10^-7;//compressibility of copper in per atoms

//CALCULATIONS
cv=cp+(9*a^2*v*t*0.024142*10^3/k);//specific heat at constant volume in cal/deg.C

mprintf('specific heat at constant volume is %3.2f cal/deg.C',cv)
