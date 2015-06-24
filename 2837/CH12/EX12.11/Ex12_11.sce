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
Re=Do/(Di*hi)
R0=Do/(Di*hi) + (Do/12 *log(Do/Di) /(2*km)) + 1/h0
td=Re/R0 *(t1-t4)
ti=t4+td
Req=1/h0
td2=Req/R0 *(t1-t4)
to=t1-td2
//results
printf("The temperature of the inner surface of pipe = %.1f F",ti)
printf("\n The temperature of the outer surface of pipe = %.1f F",to)
