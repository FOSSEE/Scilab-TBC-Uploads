// Example 3.5, page no-92
clear
clc
lam=0.7078 *10^-10
wt=42
wt1=48
lam1=(lam*(wt-1)^2)/(wt1-1)^2
printf("\nWavelength of cadmium radiation is %.4f A°",lam1*10^10)
