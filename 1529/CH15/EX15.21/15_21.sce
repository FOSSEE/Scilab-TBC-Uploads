//Chapter 15, Problem 21
clc;
R=2;                             //resistance in ohm
L=60e-3;                          //inductance in henry
C=30e-6;                         //capacitance in farad
Q=(1/R)*sqrt(L/C);                  //Q factor
printf("Q factor = %f ",Q);
