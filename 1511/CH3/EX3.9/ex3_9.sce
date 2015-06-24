// Example 3.9 page no-170
clear
clc

Idc=0.02 //A
Vdc=16 //V
rl=Vdc/Idc
f=50
x=4*sqrt(3)*f*0.05*rl
C=1/x
printf("\nC=%d microF",C*10^6)
vm=Vdc*((1+(4*f*C*rl)))/(4*f*C*rl)
printf("\nVm=%.2f V",vm)
