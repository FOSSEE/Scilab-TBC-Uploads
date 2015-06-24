// Example 2.41 page no-128
clear
clc
V=10 //v
I0=0.07/0.11//(0.07/0.11)xI
i1=5 //mA
Ir=1-I0
i=Ir/I0
Ir=i*i1
R=V/Ir
printf("R=%.1f K-Ohm",R)
