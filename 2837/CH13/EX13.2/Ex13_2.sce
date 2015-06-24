clc
clear
//Initialization of variables
P=50 //psia
V=4 //cu ft
dv=3 //cu ft
J=778
T=560 //R
//calculation
ds= 144*P*V*log((V+dv)/V) /(J*T)
//results
printf("Change in entropy = %.3f unit",ds)
