//Chapter 2, Problem 15
clc
Zl=20                           //load impedance in ohm
Z0=90                           //characteristic impedance in ohm
l=1/4                           //electrical length

//calculation of input impedance
Zin=(Z0)^2/Zl 
printf("Input impedance = %d ohm ",Zin);
