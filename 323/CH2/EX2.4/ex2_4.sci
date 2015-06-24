//Chapter 2,Ex2.4,Pg 2.8
clc;
disp("Refer to the diagram shown in the figure")
R=6+6+6 //Total resistance of the delta network in the left part of the circuit
r1=6*6/(R) //Delta to star conversion
R=15+15+15 //Total resistance of the delta network in the right part of the circuit
r2=15*15/R
R_1=1/(1/(r1+41+r2) + 1/(r1+17+r2))
R_eq=R_1+r1+r2
printf("\n The equivalent resistance R = %.0f ohms\n",R_eq)

