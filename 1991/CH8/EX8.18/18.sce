clc
clear
//input
v=4 //voltage
r=200 //resistence
c=8.8*10^-6 //capacitance
//calculation
x=v/(r*c)//calculating V/t
//output
printf("the initial rate is %3.3e Vs^-1",x)
