clear;
clc;

// Stoichiometry
// Chapter 3
// Material Balances Without Chemical Reaction


// Example 3.18
// Page 79
printf("Example 3.10, Page 79 \n \n");

// solution

// Overall balance
// F=R1+P2
// Balance across Module I
// F+R2 = R1+P1 ==> R1+P2+R2 = R1+P1
// balance across module II
// P1 = P2+R2
P2 = 5 //[m^3/h]
P1 = P2/.8 //[m^3/h]
R2 = P1-P2 //[m^3/h]
F = P1/.66 - R2//[m^3/h]
R1 = F-P2 //[m^3/h]

// Overall balance of DS in water
xR1 = (F*4200-P2*5)/R1 //[mg/l]
xP1 = (P2*5)/(.015*P1) // [mg/l]
xR2 = (P1*xP1-P2*5)/R2 //[mg/l]
m1 = F*4200+R2*xR2 //[g] DS mixeed in MF
C1 = m1/(F+R2) // [mg/l]
m2 = R1*xR1 //[g] DS in R1
r = m2*100/m1 // rejection in module in I
m3 = m1-m2 //[g] DS in P1
C2 = m3/P1 // [mg/l] 
R = R2/F 
R1 = P2*100/F
printf("F = "+string(F)+" m^3/h \nR1 = "+string(R1)+" m^3/h \nP = "+string(P1+P2)+" m^3/h \nR2 = "+string(R2)+" m^3/h \nrecycle ratio = "+string(R)+" \nrejection percentage of salt in module I = "+string(r)+"")
