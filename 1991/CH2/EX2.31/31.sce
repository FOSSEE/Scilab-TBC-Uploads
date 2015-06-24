clc
clear
//input
w=250*10^3
s=0.00003//strain
a=0.04//area
w1=320*10^3
//calculation
e=w/(a*s)//youngs module
st=w1/a//stress
//output
printf("the youngs modulus is %3.3e N/m^2",e)
printf("\n the stress is %3.0e N/m^2",st)
