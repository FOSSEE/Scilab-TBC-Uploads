//EX9_3 PG-9.14
clc
f=1e3;//frequency of oscillation
C=0.1e-6;//We choose the value of each capacitance of the RC phase shift oscillator
R=1/(2*%pi*sqrt(6)*f*C);
printf("\n  each resistance of the RC phase shift oscillator is %.3f ohm \n",R)
disp(" The standard value of R=680 ohm")
