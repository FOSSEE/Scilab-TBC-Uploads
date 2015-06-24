clc
clear
//Initialization of variables
Gf=11.57 //lb per lb of fuel
H=4.4/100
M=13.5/100
mr=700
mf=10000
mc=1 //lb
//calculations
pro=M+9*H
mrf=mr/mf
Aa=Gf+pro+mrf-mc
At=8.83
ea=(Aa-At)/At *100
//results
printf("Excess air = %.1f percent",ea)

