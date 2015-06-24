//Ex3_4 Pg-182
clc

disp("          I = Is*exp(eV/kT) = Is*exp(40V)")
disp("          Re = del_V/del_I = 1/40I")
disp("     Dividing throughtout by volume, one obtains the equation in the form of current density as")
disp("          J = Js*(exp(eV/kT)-1)")
J=10^5 //forward current density
Js=250*10^(-3) //saturation current density
e=1.6*10^(-19) //electron charge
T=300 //temperature
k=1.38*10^(-23) //Boltzmann constant
V=(log(J/Js)*k*T)/e //voltage applied across junction
printf("\n The voltage applied across the junction =%.2f V",V)
