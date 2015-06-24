clc
clear
//input
t1=280
t2=290//temperature of surroundings
sig=5.7*10^-8 //stephans constant
//calculation
e3=sig*(t1^4-t2^4)//stephans law
e1=6.2*10^9*sig 
e3=0.15*e1
//output
printf("the absorbing rate is %d W",e3)
