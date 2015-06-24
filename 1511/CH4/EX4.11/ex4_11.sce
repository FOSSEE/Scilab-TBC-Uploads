// Example 4.11 page no-211
clear
clc

alfa = 0.96
B=alfa/(1-alfa)
x=80
Rl=75000  //ohm
Av=B*Rl/x
Ap=Av*B
printf("power gain = %.0f",Ap)
