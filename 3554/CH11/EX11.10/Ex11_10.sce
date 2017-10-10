// Exa 11.10

clc;
clear all;

// Given data

// Wien's bridge
R1=3.1; // k Ohms
C1=5.2; // micro farads
R2=25; // k Ohms
f=2.5; // kHz
R4=100;// k Ohms

// Solution

w=2*%pi*f; // Angular frequency
// Substituting the value of C3 from Eq. 11.22(page no. 330) in Eq.11.21(pagr no. 330) to get value of R3 as follows
R3=R4/R2 *(R1+1/(w^2*R1*C1^2));
// Also we can get C3 from Eq. 11.22(page no. 330)
C3=1/(w^2*C1*R1*R3);
printf(' The parallel resistance of %.1f K ohms and capacitance of %.1f pf\n     causes a Wien bridge to null with values of given component values. \n',R3,C3*10^6);

