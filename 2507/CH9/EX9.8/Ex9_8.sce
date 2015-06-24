clc
clear
printf("Example 9.8 | Page number 271 \n\n");
//Calculate work per kilogram of air and change in entropy
//Given Data
T1 = 800 //K //initial temperature
p1 = 1.5e6 //N/m^2 //initial pressure
T2 = 540 //K //final temperature
T2s = 485 //K //final temperature for reversible process
Q = 0 //adiabatic process
y = 1.4
Cv = 718 //J/kgK //specific heat at constant volume

//Solution
delta_U = Cv*(T2-T1) //kJ/kg //change in internal energy
W = (Q-delta_U)*.001 //kJ/kg //work done per kilogram
printf("Work done per kilogram = %.1f kJ/kg\n",W);

p2 = p1*(T2s/T1)^(y/(y-1)) //N/m^2 //final pressure
delta_S = (y*Cv)*log(T2/T1)-(y*Cv-Cv)*log(p2/p1)
printf("Change in entropy = %.3f kJ/kgK",delta_S*.001)
