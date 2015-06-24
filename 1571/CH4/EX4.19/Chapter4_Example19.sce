clc
clear

//INPUT
mf=15;//mean free path in cm
t=300;//temperature of oxygen molecule in K
d=3*10^(-8);//diameter of the molecule in cm
N=6.02*10^23;//avagadro number
r=8.32*10^7;//universal gas constant in ergs/mole/deg
a=(2^(0.5))*(22/7);

//CSLCULATIONS
p=(r*t)/(N*a*(d^2)*mf);//pressure of the oxygen molecule in dynes/sq.cm

//OUTPUT
mprintf('the pressure of the oxygen molecule is %3.3f dynes/sq.cm',p)
