// chapter 2
// example 2.9
// Fig. 2.17
// Calculate the value of commutating capacitance
// page-54
clear;
clc;
// given
Edc=120; // in V (source voltage)
I=20; // in A (current)
t_off=60; // in us (turn-off time of both SCR)
// calculate
R1=Edc/I; // calculation of R1
R2=R1; // calculation of R2
C=1.44*t_off/R1; // calculation of commutating capacitance
printf("\n\nThe commutating capacitance for succcessful commutation is \tC= %.1f uF",C);