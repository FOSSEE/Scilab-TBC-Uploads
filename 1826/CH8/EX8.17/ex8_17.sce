// Example 8.17, page no-221
clear
clc
e=1.6*10^-19 //C
ed=0.2*e
T1=300
T2=1000
k=1.38*10^-23
fe1=1/(1+%e^(ed/(k*T1)))
fe2=1/(1+%e^(ed/(k*T2)))
printf("\nThe Fermi distribution function for the given energy at %d K is %.6f",T1,fe1)
printf("\nThe Fermi distribution function for the given energy at %d K is %.4f",T2,fe2)
