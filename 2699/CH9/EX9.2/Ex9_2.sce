//EX9_2 PG-9.13
clc
f=900e3;//frequency of oscillation
C=1e-12;//each capacitance of the RC phase shift oscillator
R=1/(2*%pi*sqrt(6)*f*C);
printf("\n each resistance of the RC phase shift oscillator is %.3f kohm \n",R*1e-3)
G=29;//opamp gain Rf/R1=29
R1=1e3;
printf("\n R1=%.0f kohm \n",R1*1e-3)
Rf=G*R1;
printf("\n Rf=%.0f kohm \n",Rf*1e-3)
disp("the design circuit is shown ")
