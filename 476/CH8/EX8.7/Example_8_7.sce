//A Textbook of Chemical Engineering Thermodynamics
//Chapter 8
//Phase Equilibria
//Example 7


clear;
clc;


//Given:
P1 = 135.4; //vapour pressure of benzene (kPa)
P2 = 54; //vapour pressure of toluene (kPa)

//To determine the pressure at the beginning and at the end of process

//At beginning
x =  0.5; //liquid phase composition
//Using eq. 8.51 (Page no. 332)
P_beg = P2 + (P1-P2)*x;

//At the end
y = 0.5; //vapour phase composition
//Using eq. 8.54 (Page no. 333) and rearranging
P_end = (P1*P2)/(P1-y*(P1-P2));

mprintf('Pressure at the beginning of the process is %f kPa',P_beg);
mprintf('\n Pressure at the end of the process is %f kPa',P_end);

//end