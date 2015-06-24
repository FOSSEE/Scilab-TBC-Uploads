//Ex3_2 Pg-182
clc
J=10^5 //forward current density
Js=250*10^(-3) //saturation current density
e=1.6*10^(-19) //electron charge
T=300 //temperature
k=1.38*10^(-23) //Boltzmann constant
V=(log(J/Js)*k*T)/e //voltage applied across junction
printf("The voltage applied across the junction =%.2f V",V)
