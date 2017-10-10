//Chapter 11 Thermodynamics Some Basic Concepts

clc;
clear;

//Initialisation of Variables
m= 9 //gms
T= -10 //C
T1= 0 //C
R= 0.5 //cal per gram per degree
H= 79.7 //cal per gram
R1= 1 //cal per gram per degree
T2= 100 //C
H1= 539.7 //cal per gm
R2= 8.11 //cal per gram per degree
M= 18 //gms
T3= 40 //C

//CALCULATIONS
dH= m*R*(T1-T)
dH1= m*H
dH2= m*R1*(T2-T1)
dH3= m*H1
dH4= (m/M)*R2*(T3-T1)
dH5= dH+dH1+dH2+dH3+dH4

//RESULTS
mprintf("Value of dH= %.1f cal",dH5)
