clc
clear
//Initialization of variables
x1=0.128
x2=0.035
x3=0.002
M=12
N=26
//calculations
c=x1+x3
mole=12/c
wt=M*M+N
num=mole/wt
//results
printf("Number of moles of dry products per pound of fuel = %.3f mole",num)
