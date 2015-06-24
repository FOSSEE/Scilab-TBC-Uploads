clc
clear
//input
e1=350//heat per second
t=7+273 //teperature
sig=5.7*10^-8//stephans constant
//calculation
e2=e1*4//stephans law
E=sig*(t^4-t^4)//stephans law
//output
printf("the rate of emission is %3.3f W",e2)
printf("\nthe rate of emission when outer temperature is increased is %d W",E)
