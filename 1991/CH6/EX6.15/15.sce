clc
clear
//input
a=5 //area
k=0.07 //thermal conductivity
dt=21 //temperature difference
x= 4*10^-3 //thickness of wood
//calculation
y=-(k*a*dt/x)//steady state equation
//output
printf("the rate of transfer is %3.3f Js^-1",y)
