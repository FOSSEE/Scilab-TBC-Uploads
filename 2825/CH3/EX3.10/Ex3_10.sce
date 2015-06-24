//Ex3_10 Pg-186
clc

 disp("We know that         I = I0*(exp(V/n*Vt)-1)")
 disp("Dividing on both sides by area A, one obtains")
 disp("             I/A = I0/A*(exp(V/n*Vt)-1)")
 disp("or           J = J0*(exp(V/n*Vt)-1)")
n=1 //constant
T=300 //temperature in K
Vt=T/11600
J=10^5 //forward current density
J0=250*10^(-3) //saturation current density 
V=Vt*log(J/J0)
printf("\n The voltage applied across the junction =%.4f V",V)
