// Example 20.3, page no-569
clear
clc

t1=4.2
t2=7.18
h0=6.5*10^4//A/m
he=h0*(1-((t1^2)/t2^2))
r=0.5*10^-3
I=2*%pi*he*r
printf("The critical current through a wire of lead is %.2f A",I)
