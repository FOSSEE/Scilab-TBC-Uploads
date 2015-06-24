//Ex3_21 Pg-194
clc

disp("We know that")
disp("  r_ac = dV/dI - 1/(dI/dV) = 1/((I0/KT)exp(V/KT))")
k=8.62*10^(-5)
T=300 //temperaturein K
kT=k*T
I0=10^(-6) //saturation current
V=150*10^(-3) //voltage forward biased
r_ac = 1/((I0/kT)*exp(V/kT))
 //value of exp(0.15/0.02586)=330.45 and not the textbook value of 332.66

printf("\n The AC resistance = %.2f ohm",r_ac) //text book value wrong
