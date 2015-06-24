clc
clear
//Initialization of variables
Do=2.375 //in
hi=1200
Di=2.067 //in
km=29.2
h0=1500
L=2.375 //in
t1=220 //F
t4=140 //F
//calculations
U0= 1/(Do/(Di*hi) + (Do/12 *log(Do/Di) /(2*km)) + 1/h0)
Q=U0*L*%pi*(t1-t4)/12
//results
printf("Heat transferred per foot length of pipe = %d btu/hr",Q)
