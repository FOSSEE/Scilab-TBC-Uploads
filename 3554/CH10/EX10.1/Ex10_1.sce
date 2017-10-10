// Exa 10.1

clc;
clear all;

// Given data

// 1st measurement
f1=1; //  in MHZ
C1=500; // in pf
// 2nd measurement
f2=2; //in MHz
C2=110; // in pf

// Solution
// Using equation 10.2(page no. 278) to calculate distributed Capacitance

Cs=(C1-4*C2)/3; // Distributed capacitance in pf
printf('The value of distributed capacitance = %d pf \n',Cs);
// using equation of resonant frequency given as f1=1/(2*%pi*sqrt(L*(C1+Cs));
// Therefore
L=1/(4*(%pi)^2*f1^2*(C1+Cs)); // Inductor value

printf(' The value of L(inductor) is =%.3f micro H \n',L*10^6); 
