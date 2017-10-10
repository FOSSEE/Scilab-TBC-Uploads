//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
t=62.5*4*1//lbf
a=2/3*2//ft
m=62.5*4*(4/3)//lbf
f=500*2//lbf ft
T=((62.5*2*2)/2)*1/3*2//lbf
H=(62.5*2*1)//ft
//CALCULATIONS
H1=f/[H+T]*2/2.9///ft
//RESULTS
printf('the trap door width=% f ft',H1)
