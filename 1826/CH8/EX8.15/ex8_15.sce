// Example 8.15, page no-219
clear
clc
e=1.6*10^-19 //C
ed=0.02*e
T1=200
T2=400
k=1.38*10^-23
fe1=1/(1+%e^(ed/(k*T1)))
fe2=1/(1+%e^(ed/(k*T2)))
printf("\nThe Fermi distribution function for the given energy at %d K is %.4f",T1,fe1)
printf("\nThe Fermi distribution function for the given energy at %d K is %.4f",T2,fe2)
